import 'package:flutter/material.dart';
import 'package:nba_app/services/team_service.dart';
import 'package:nba_app/widgets/team_card.dart';

class TeamListScreen extends StatelessWidget {
  final teamService = TeamService();
  TeamListScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: teamService.getNbaTeams(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.connectionState == ConnectionState.done) {
            final teamList = teamService.teamList;
            return ListView.builder(
              itemCount: teamList.length,
              itemBuilder: (context, index) {
                final team = teamList[index];
                return TeamCard(team: team);
              },
            );
          } else {
            return const Center(child: Text("No Teams To Show"));
          }
        },
      ),
    );
  }
}
