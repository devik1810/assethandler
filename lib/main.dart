import 'package:assethandler/1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {'/': (context) => Home()},
    ),
  );
}
