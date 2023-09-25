// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future requestAction(DateTime? date) async {
  // Add your function code here!

  int previousday = FFAppState().isNewDay;
  int today = date!.day;

  if (previousday != today) {
    FFAppState().update(() {
      FFAppState().availableRequest = 3;
      FFAppState().isNewDay = date!.day;
    });
  }
  print('${FFAppState().availableRequest} ${FFAppState().isNewDay}');
}
