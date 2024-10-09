import 'package:flutter/material.dart';

import 'pages/team_list_screen.dart';

void main() {
  runApp(const NbaApp());
}

class NbaApp extends StatelessWidget {
  const NbaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TeamListScreen(),
    );
  }
}
