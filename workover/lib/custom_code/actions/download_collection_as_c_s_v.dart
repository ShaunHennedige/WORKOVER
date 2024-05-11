// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert' show utf8;
import 'package:download/download.dart';

Future downloadCollectionAsCSV(List<CompletedtasksRecord>? docs) async {
  docs = docs ?? [];

  String fileContent = "department, description, useremail";

  docs.asMap().forEach((index, record) => fileContent = fileContent +
      "\n" +
      record.department.toString() +
      "," +
      record.useremail.toString() +
      "," +
      record.description.toString());

  final fileName = "FF" + DateTime.now().toString() + ".csv";

  // Encode the string as a List<int> of UTF-8 bytes
  var bytes = utf8.encode(fileContent);

  final stream = Stream.fromIterable(bytes);
  return download(stream, fileName);
}
