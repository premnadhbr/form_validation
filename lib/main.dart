import 'package:flutter/material.dart';
import 'package:flutter_application_4/inherited.dart';
import 'package:flutter_application_4/loginpage.dart';

void main() {
  runApp(
    inherited(
      count: 2,
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Loginpage(),
        ),
      ),
    ),
  );
}
