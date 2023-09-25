// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter_tts/flutter_tts.dart';

Future<bool> myTTS(
  String text,
  bool flag,
) async {
  // Add your function code here!
  FlutterTts tts = new FlutterTts();
  tts.setLanguage('en-US');
  if (flag == true) {
    tts.speak(text);
    return false;
  } else {
    tts.pause();
    return true;
  }
}
