import 'package:flutter/material.dart';
import 'package:whatsapp_part/screens/chat-screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF075E54),
          title: Text(
            "WhatsApp",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              backgroundColor: Color(0xFF075E54),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.camera_alt_rounded, color: Colors.white),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search, color: Colors.white),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert, color: Colors.white),
            ),
          ],
          bottom: TabBar(
            tabs: [
              Tab(
                child: Text(
                  "Chats",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  "Status",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  "Calls",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [ChatScreen(),
           Text("Screen2"),
            Text("Screen3")],
        ),
      ),
    );
  }
}
 