import 'package:apollomissionsapp/data/missions_data.dart';
import 'package:apollomissionsapp/views/pages/about_page.dart';
import 'package:apollomissionsapp/views/pages/home_page.dart';
import 'package:apollomissionsapp/views/pages/mission_page.dart';
import 'package:apollomissionsapp/views/pages/missions_page.dart';
import 'package:apollomissionsapp/views/pages/nasa_space_apps_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ApolloMissionsApp());
}

class ApolloMissionsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "Montserrat",
        brightness: Brightness.dark,
      ),
      routes: {
        '/': (context) => HomePage(),
        '/about': (context) => AboutPage(),
        '/nasa-space-apps': (context) => NasaSpaceAppsPage(),
        '/missions/apollo': (context) => MissionsPage(
              title: "Missões Apollo",
              missions: MissionsData.apolloMissions,
            ),
        '/missions/artemis': (context) => MissionsPage(
              title: "Missões Artemis",
              missions: MissionsData.artemisMissions,
            ),
        '/mission': (context) => MissionPage(
              ModalRoute.of(context).settings.arguments,
            ),
      },
    );
  }
}
