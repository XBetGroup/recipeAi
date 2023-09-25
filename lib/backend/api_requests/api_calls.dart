import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class RecipeGPTCall {
  static Future<ApiCallResponse> call({
    String? apikey = '',
    dynamic? promptJson,
    dynamic? functionsJson,
    dynamic? functionCallJson,
  }) {
    final prompt = _serializeJson(promptJson);
    final functions = _serializeJson(functionsJson);
    final functionCall = _serializeJson(functionCallJson);
    final ffApiRequestBody = '''
{
  "model": "gpt-3.5-turbo",
  "messages": ${prompt},
  "functions": ${functions},
  "function_call": ${functionCall}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'RecipeGPT',
      apiUrl: 'https://api.openai.com/v1/chat/completions',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${apikey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic ts(dynamic response) => getJsonField(
        response,
        r'''$.created''',
      );
  static dynamic role(dynamic response) => getJsonField(
        response,
        r'''$.choices[:].message.role''',
      );
  static dynamic content(dynamic response) => getJsonField(
        response,
        r'''$.choices[:].message.function_call.arguments''',
      );
}

class DishGPTCall {
  static Future<ApiCallResponse> call({
    String? apikey = '',
    String? prompt = '',
  }) {
    final ffApiRequestBody = '''
{
  "prompt": "${prompt}",
  "n": 1,
  "size": "256x256"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'DishGPT',
      apiUrl: 'https://api.openai.com/v1/images/generations',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${apikey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic url(dynamic response) => getJsonField(
        response,
        r'''$.data[:].url''',
      );
}

class DeepAIImageCall {
  static Future<ApiCallResponse> call({
    String? text = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'DeepAIImage',
      apiUrl: 'https://api.deepai.org/api/text2img',
      callType: ApiCallType.POST,
      headers: {
        'api-key': 'cb31ff6a-bce5-49a1-b9fb-0500465a6a3f',
      },
      params: {
        'text': "${text}",
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic deepAiurl(dynamic response) => getJsonField(
        response,
        r'''$.output_url''',
      );
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
