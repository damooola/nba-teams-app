import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/team.dart';

class TeamService {
  final List<Team> teamList = [];
  // get all nba teams
  Future getNbaTeams() async {
    const apiKey = "84eae41d-0409-442a-afdb-18761112a7e4";
    Uri uri = Uri.https('api.balldontlie.io', '/v1/teams');
    // OR Uri uri = Uri.parse('https://api.balldontlie.io/v1/teams');

    //http request with apikey as a header for authorization
    final response = await http.get(uri, headers: {"Authorization": apiKey});

    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      final teams = jsonData['data'] as List<dynamic>;

      for (var eachTeam in teams) {
        final team = Team(
            abbrevitaion: eachTeam['abbreviation'],
            name: eachTeam['full_name'],
            city: eachTeam['city']);
        teamList.add(team);
      }
    }
  }
}
