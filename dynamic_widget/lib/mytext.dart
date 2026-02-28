import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  final String?   mytext;
  Heading(this.mytext,{super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "${mytext ?? ""} ".toUpperCase(),
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: const Color.fromARGB(255, 203, 19, 19),
        fontStyle: FontStyle.italic,
        letterSpacing: 2,
      ),
    );
  }
}
