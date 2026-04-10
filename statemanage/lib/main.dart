import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanage/screens/changenotifier.dart';
import 'package:statemanage/screens/home.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CountNotifier(),
      child: MyApp(), // 👈 directly homeScreen na do
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homeScreen(),
    );
  }
}