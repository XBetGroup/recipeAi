import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';

dynamic convertToJSON(String prompt) {
  return json.decode(
      '[ { "role":"system", "content":"You are a helpful assistant." }, { "role":"user", "content":"$prompt" } ]');
}

int reduceNum(int cur) {
  cur = cur - 1;
  if (cur < 0) {
    cur = 0;
  }
  return cur;
}

dynamic convertContentToJSON(String content) {
  print(
      '------------------------------ Original Response ----------------------------');
  print(content);
  RegExp unicodePattern = RegExp(r'[\u0000-\uFFFF]');
  String cleanString = content.replaceAll(unicodePattern, '');

  print(
      '--------------------------- Clean String ----------------------------------');
  print(cleanString);
  return json.decode(cleanString);
}

List<dynamic> saveRecipes(
  List<dynamic> current,
  dynamic log,
) {
  current.add(log);

  print(
      '-----------------------------------log-------------------------------------');
  print(current);

  return current;
}

String convertListToString(List<String> content) {
  String result = '';

  for (int i = 0; i < content.length; i++) {
    result += "- " + content[i] + "\n";
  }

  return result;
}

String printString(dynamic input) {
  print(input);
  dynamic temp = json.decode(input);
  print(temp);
  print(temp['name']);
  return 'OK';
}

dynamic passParam(dynamic input) {
  return json.decode(input);
}
