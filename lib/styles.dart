import 'package:flutter/material.dart';

const TextStyle bodytext = TextStyle(
  fontSize: 22,
  color: Colors.white,
);
const Widget divide = SizedBox(
  height: 15,
);

Widget Login() {
  return Container(
    height: 100,
    child: const Center(
      child: Text(
        "Login",
        style: TextStyle(
            fontSize: 60,
            fontWeight: FontWeight.w100,
            color: Colors.white,
            fontFamily: 'Caprasimo'),
      ),
    ),
  );
}
