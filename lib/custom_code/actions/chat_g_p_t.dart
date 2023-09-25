// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:developer';

import 'package:http/http.dart' as http; // import the http package
import 'dart:async';
import 'dart:convert';

Future<dynamic> chatGPT(
  String apiKey, // the OpenAI API key to be used
  String prompt, // the prompt to be used in the chat
  String? languagecode,
) async {
  final data = {
    'function_call': {"name": "set_recipe"},
    'functions': [
      {
        "name": "set_recipe",
        "parameters": {
          "type": "object",
          "properties": {
            "name": {"type": "string", "description": "name of the meal"},
            "instructions": {
              "type": "array",
              "description": "steps to prepare the recipe (no numbering)",
              "items": {"type": "string"}
            },
            "ingredients": {
              "type": "array",
              "description":
                  "specific item or substance to prepare the recipe that must have correct weight, quantity, teaspoon, tablespoon, cup and other possible units (no numbering)",
              "items": {"type": "string"}
            },
            "time_to_cook": {
              "type": "number",
              "description": "total time to prepare the recipe in minutes"
            }
          },
          "required": ["name", "ingredients", "instructions", "time_to_cook"],
        }
      }
    ],
    'messages': [
      {'role': 'user', 'content': '$prompt'}
    ],
    'model': "gpt-3.5-turbo", // the GPT-3 model to be used
  };

  final headers = {
    'Authorization':
        'Bearer ' + apiKey, // the API key is passed as an authorization token
    'Content-Type':
        'application/json' // the content type of the request is set to JSON
  };
  final request = http.Request(
    'POST', // make a POST request
    Uri.parse(
        'https://api.openai.com/v1/chat/completions'), // the OpenAI API endpoint for chat completions
  );
  request.body = json.encode(
      data); // the request body is set to a JSON-encoded version of the chat data
  request.headers.addAll(
      headers); // the headers for the request are set to include the authorization token and content type

  final httpResponse = await request.send(); // send the request

  if (httpResponse.statusCode == 200) {
    // if the response is OK
    final jsonResponse = json.decode(
        await httpResponse.stream.bytesToString()); // decode the JSON response

    log(jsonResponse.toString());
    // final content = jsonResponse['choices'][0]['message']['content']
    // .toString(); // extract the content of the response
    // final String modifiedText = content.replaceFirst(RegExp(r'^\s+'), '');
    // print(modifiedText);
    // log(jsonResponse['choices'][0]['message']['function_call']['arguments']
    // .toString());
    final jsonLang =
        await jsonResultTranslator(languagecode!, jsonResponse, apiKey);

    return jsonLang; // return the chat content
  } else {
    // if the response is not OK
    print(httpResponse.reasonPhrase); // print the reason for the error
    return ''; // return an empty string
  }
}

dynamic jsonResultTranslator(
    String languageCode, dynamic jsonResult, String apiKey) async {
  final jsonResult1 =
      jsonResult['choices'][0]['message']['function_call']['arguments'];
  log('this ' + jsonResult1.toString());
  final prompt =
      '''Translate all the values in this json data and return this json data:  "$jsonResult1" to this language code '$languageCode' but making the keys in the json data to remain the same ''';
  final data = {
    'messages': [
      {'role': 'user', 'content': '$prompt'}
    ],
    'model': "gpt-3.5-turbo", // the GPT-3 model to be used
  };
  final headers = {
    'Authorization':
        'Bearer ' + apiKey, // the API key is passed as an authorization token
    'Content-Type':
        'application/json' // the content type of the request is set to JSON
  };
  final request = http.Request(
    'POST', // make a POST request
    Uri.parse(
        'https://api.openai.com/v1/chat/completions'), // the OpenAI API endpoint for chat completions
  );
  request.body = json.encode(
      data); // the request body is set to a JSON-encoded version of the chat data
  request.headers.addAll(
      headers); // the headers for the request are set to include the authorization token and content type

  final httpResponse = await request.send(); // send the request

  if (httpResponse.statusCode == 200) {
    // if the response is OK
    final jsonResponse = json.decode(
        await httpResponse.stream.bytesToString()); // decode the JSON response

    log(jsonResponse.toString());
    // final content = jsonResponse['choices'][0]['message']['content']
    // .toString(); // extract the content of the response
    // final String modifiedText = content.replaceFirst(RegExp(r'^\s+'), '');

    return jsonResponse; // return the chat content
  } else {
    // if the response is not OK
    print(httpResponse.reasonPhrase); // print the reason for the error
    return ''; // return an empty string
  }
}
