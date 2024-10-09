import 'package:flutter/material.dart';
import 'package:nba_app/models/team.dart';

class TeamCard extends StatelessWidget {
  final Team team;
  const TeamCard({super.key, required this.team});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.black12, borderRadius: BorderRadius.circular(12)),
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(5),
      child: ListTile(
        title: Text("${team.name} (${team.abbrevitaion})"),
        subtitle: Text(team.city),
      ),
    );
  }
}
