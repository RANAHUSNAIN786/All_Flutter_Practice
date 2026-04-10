import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanage/screens/changenotifier.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("State Manage"),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Consumer<CountNotifier>(
          builder: (context, value, child) {
            return Text(
              value.getcount.toString(),
              style: TextStyle(fontSize: 40),
            );
          },
        ),
      ),
      floatingActionButton: Consumer<CountNotifier>(
        builder: (context, value, child) {
          return FloatingActionButton(
            onPressed: () {
              value.increment();
            },
            child: Icon(Icons.add),
          );
        },
      ),
    );
  }
}