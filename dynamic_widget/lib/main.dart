import 'package:dynamic_widget/img.dart';
import 'package:dynamic_widget/mytext.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar:AppBar(
      backgroundColor: Colors.cyan,
      title: Text("Start App",
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.black,
        fontStyle: FontStyle.italic,
        letterSpacing: 2

      ),),
      centerTitle: true,
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        SizedBox(width: double.infinity,),
      Heading("Dynamic Widget"),
      ImagePage("assets/images/car1.jpg"),
      SizedBox(height: 20,),
      ImagePage("assets/images/car2.jpg"),
        ],
      ),
    ),
  ));
}
