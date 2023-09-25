// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<List<RecipeInputStruct>?> newCustomActionHelp(
    List<RecipeInputStruct>? jsonArray) async {
  // Add your function code here!

  List<RecipeInputStruct> listOfStruct = [];

  for (var item in jsonArray!) {
    listOfStruct.add(RecipeInputStruct.fromMap(item as Map<String, dynamic>));
  }
  return listOfStruct;
}
