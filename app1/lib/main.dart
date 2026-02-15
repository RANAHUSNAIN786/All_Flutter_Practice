import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.amber,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.grey.shade50,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MY APP"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      drawer: const MyDrawer(),
      body: const Center(
        child: Text("Welcome!", style: TextStyle(fontSize: 28)),
      ),
    );
  }
}

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(24),
          bottomRight: Radius.circular(24),
        ),
      ),
      child: Column(
        children: [
          // Header
          UserAccountsDrawerHeader(
            margin: EdgeInsets.zero,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.amber,
                  Color(0xFFFFC107),
                ], // amber to amber[700]
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            currentAccountPicture: ClipOval(
              child: Image.asset(
                "assets/images/prof.png",
                fit: BoxFit.cover,
                width: 90,
                height: 90,
                errorBuilder: (context, error, stack) =>
                    const Icon(Icons.person, size: 60, color: Colors.white),
              ),
            ),
            accountName: const Text(
              "Rana Husnain",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            accountEmail: const Text(
              "Husnain@gmail.com",
              style: TextStyle(color: Colors.black54),
            ),
          ),

          // Menu Items
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                ListTile(
                  leading: const Icon(Icons.home),
                  title: const Text("Home"),
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Home tapped")),
                    );
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.info),
                  title: const Text("Info"),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.contact_emergency),
                  title: const Text("Contact"),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.mobile_friendly),
                  title: const Text("Mobile"),
                  onTap: () {},
                ),
                const Divider(indent: 16, endIndent: 16),
                ListTile(
                  leading: const Icon(Icons.logout, color: Colors.red),
                  title: const Text(
                    "Logout",
                    style: TextStyle(color: Colors.red),
                  ),
                  tileColor: Colors.red.shade50,
                  onTap: () {
                    // logout logic
                  },
                ),
              ],
            ),
          ),

          // Small footer
          const Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              "Version 1.0",
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}
