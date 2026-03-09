import 'package:flutter/material.dart';

class statusScreen extends StatelessWidget {
  const statusScreen({super.key});

  // ── Dummy Data ──────────────────────────────
  static const List<Map<String, dynamic>> statuses = [
    {'name': 'Sarim Khan',   'time': 'Today, 9:45 am', 'color': Color(0xFF7B3F9E)},
    {'name': 'Raza Bhai',    'time': 'Today, 8:30 am', 'color': Color(0xFFC0392B)},
    {'name': 'Fahad',        'time': 'Today, 7:12 am', 'color': Color(0xFFE67E22)},
    {'name': 'Hassan Ahmed', 'time': 'Today, 6:50 am', 'color': Color(0xFF1A7A4A)},
    {'name': 'Zahid Malik',  'time': 'Today, 6:10 am', 'color': Color(0xFF2E4057)},
  ];

  // ── Bottom Sheet ────────────────────────────
  void _showAddStatusSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (_) => Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Add to My Status',
              style: TextStyle(
                color: Color(0xFF111B21),
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 16),
            _sheetOption(context, Icons.camera_alt,    'Camera'),
            _sheetOption(context, Icons.photo_library, 'Photo or Video'),
            _sheetOption(context, Icons.text_fields,   'Text'),
            _sheetOption(context, Icons.gif_box,       'GIF'),
            const SizedBox(height: 8),
            Center(
              child: TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text(
                  'Cancel',
                  style: TextStyle(
                    color: Color(0xFF00A884),
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ── Sheet Option Row ─────────────────────────
  Widget _sheetOption(BuildContext context, IconData icon, String label) {
    return InkWell(
      onTap: () => Navigator.pop(context),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: [
            Container(
              width: 44,
              height: 44,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFF00A884),
              ),
              child: Icon(icon, color: Colors.white, size: 22),
            ),
            const SizedBox(width: 16),
            Text(
              label,
              style: const TextStyle(color: Color(0xFF111B21), fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      // ── Body ────────────────────────────────
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          // ── My Status Tile ──────────────────
          InkWell(
            onTap: () => _showAddStatusSheet(context),
            child: Container(
              color: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              child: Row(
                children: [
                  Stack(
                    children: [
                      const CircleAvatar(
                        radius: 26,
                        backgroundColor: Color(0xFF2B5278),
                        child: Text(
                          'A',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            color: const Color(0xFF00A884),
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white, width: 2),
                          ),
                          child: const Icon(Icons.add, color: Colors.white, size: 13),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 14),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'My Status',
                        style: TextStyle(
                          color: Color(0xFF111B21),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 2),
                      Text(
                        'Tap to add status update',
                        style: TextStyle(color: Color(0xFF8696A0), fontSize: 13),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          // ── Divider ─────────────────────────
          const Divider(height: 1, color: Color(0xFFE9EDEF)),

          // ── Section Label ───────────────────
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 14, 20, 6),
            child: Text(
              'RECENT UPDATES',
              style: TextStyle(
                color: Color(0xFF8696A0),
                fontSize: 12,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.5,
              ),
            ),
          ),

          // ── Status List ─────────────────────
          Expanded(
            child: ListView.builder(
              itemCount: statuses.length,
              itemBuilder: (context, index) {
                final user = statuses[index];
                return InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Row(
                      children: [
                        // Green ring
                        Container(
                          width: 52,
                          height: 52,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: SweepGradient(
                              colors: [
                                Color(0xFF00A884),
                                Color(0xFF00D4AA),
                                Color(0xFF00A884),
                              ],
                            ),
                          ),
                          padding: const EdgeInsets.all(3),
                          child: Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,    // white gap ring ke andar
                            ),
                            padding: const EdgeInsets.all(2),
                            child: CircleAvatar(
                              backgroundColor: user['color'] as Color,
                              child: Text(
                                (user['name'] as String)[0],
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 14),
                        // Name + Time
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              user['name'] as String,
                              style: const TextStyle(
                                color: Color(0xFF111B21),
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 2),
                            Text(
                              user['time'] as String,
                              style: const TextStyle(
                                color: Color(0xFF8696A0),
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),

      // ── Camera FAB ──────────────────────────
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF00A884),
        onPressed: () => _showAddStatusSheet(context),
        child: const Icon(Icons.camera_alt, color: Colors.white),
      ),
    );
  }
}