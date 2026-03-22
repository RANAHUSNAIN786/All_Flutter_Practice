import 'package:flutter/material.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text(
          "GBWhatsapp",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          Icon(Icons.search),
          SizedBox(width: 10),
          Icon(Icons.more_vert),
          SizedBox(width: 10),
        ],
      ),
      body: TabBarView(
        children: [
          TabBar(tabs: [Text("data")]),
        ],
      ),
    );
  }
}
