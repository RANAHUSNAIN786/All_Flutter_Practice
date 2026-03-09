import 'package:flutter/material.dart';

class callScreen extends StatelessWidget {
  const callScreen({super.key});

  // ── Dummy Data ──────────────────────────────
  static const List<Map<String, dynamic>> calls = [
    {'name': 'Sara Khan',    'time': 'Today, 9:45 am',   'type': 'incoming', 'missed': false, 'color': Color(0xFF7B3F9E)},
    {'name': 'Raza Bhai',    'time': 'Today, 8:30 am',   'type': 'outgoing', 'missed': false, 'color': Color(0xFFC0392B)},
    {'name': 'Fatima',       'time': 'Yesterday, 7:12 pm','type': 'incoming', 'missed': true,  'color': Color(0xFFE67E22)},
    {'name': 'Hassan Ahmed', 'time': 'Yesterday, 6:50 pm','type': 'outgoing', 'missed': false, 'color': Color(0xFF1A7A4A)},
    {'name': 'Zara Malik',   'time': 'Mon, 6:10 am',     'type': 'incoming', 'missed': true,  'color': Color(0xFF2E4057)},
    {'name': 'Usman Bhai',   'time': 'Sun, 11:00 pm',    'type': 'outgoing', 'missed': false, 'color': Color(0xFF5D4037)},
    {'name': 'Ayesha',       'time': 'Sat, 3:30 pm',     'type': 'incoming', 'missed': false, 'color': Color(0xFF00695C)},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      // ── Body ────────────────────────────────
      body: ListView.builder(
        itemCount: calls.length,
        itemBuilder: (context, index) {
          final call = calls[index];
          final bool missed = call['missed'] as bool;
          final bool outgoing = call['type'] == 'outgoing';

          return InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [

                  // ── Avatar ──
                  CircleAvatar(
                    radius: 26,
                    backgroundColor: call['color'] as Color,
                    child: Text(
                      (call['name'] as String)[0],
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  const SizedBox(width: 14),

                  // ── Name + arrow + time ──
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          call['name'] as String,
                          style: TextStyle(
                            color: missed
                                ? const Color(0xFFFF6B6B)
                                : const Color(0xFF111B21), // dark text
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Row(
                          children: [
                            // Arrow icon
                            Icon(
                              outgoing
                                  ? Icons.call_made      // outgoing arrow up
                                  : Icons.call_received, // incoming arrow down
                              size: 14,
                              color: missed
                                  ? const Color(0xFFFF6B6B)
                                  : const Color(0xFF00A884),
                            ),
                            const SizedBox(width: 4),
                            Text(
                              call['time'] as String,
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

                  // ── Call Icon (right side) ──
                  Icon(
                    Icons.call,
                    color: const Color(0xFF00A884),
                    size: 22,
                  ),
                ],
              ),
            ),
          );
        },
      ),

      // ── FAB ─────────────────────────────────
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF00A884),
        onPressed: () {},
        child: const Icon(Icons.add_call, color: Colors.white),
      ),
    );
  }
}