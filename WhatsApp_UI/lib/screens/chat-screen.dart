import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ChatItem> chats = [
      ChatItem(name: "Ali", message: "Assalam o Alaikum", time: "10:45 AM"),
      ChatItem(name: "Ahmed", message: "Kya scene hai", time: "9:30 AM"),
      ChatItem(name: "Usman", message: "Call karo", time: "Yesterday"),
      ChatItem(name: "Bilal", message: "Kaam ho gaya", time: "Yesterday"),
      ChatItem(name: "Hamza", message: "Shop pohanch gaya", time: "Monday"),
    ];

    return ListView.builder(
      itemCount: chats.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundColor: const Color(0xFF25D366),
            child: Text(
              chats[index].name[0],
              style: const TextStyle(color: Colors.white),
            ),
          ),
          title: Text(
            chats[index].name,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            chats[index].message,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          trailing: Text(
            chats[index].time,
            style: const TextStyle(fontSize: 12, color: Colors.grey),
          ),
        );
      },
    );
  }
}


class ChatItem {
  final String name;
  final String message;
  final String time;

  ChatItem({
    required this.name,
    required this.message,
    required this.time,
  });
}