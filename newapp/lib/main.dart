import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 219, 218, 219),
          title: Text("New Appbar"),
          centerTitle: true, 
        ),



        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(height: 200, width: 200, color: Colors.blue),

              Container(
                height: 200,
                width: 200,
                color: const Color.fromARGB(255, 33, 243, 51),
                child: Center(
                  child: Text(
                    "this is demo text",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(height: 200, width: 200, color: Colors.blue),

              Container(
                height: 200,
                width: 200,
                color: const Color.fromARGB(255, 33, 243, 51),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
