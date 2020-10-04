import 'package:apollomissionsapp/data/missions_data.dart';
import 'package:apollomissionsapp/views/pages/about_page.dart';
import 'package:apollomissionsapp/views/pages/home_page.dart';
import 'package:apollomissionsapp/views/pages/mission_page.dart';
import 'package:apollomissionsapp/views/pages/program_page.dart';
import 'package:apollomissionsapp/views/pages/nasa_history_page.dart';
import 'package:apollomissionsapp/views/pages/image_of_the_day_page.dart';
import 'package:apollomissionsapp/views/pages/programs_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ApolloMissionsApp());
}

class ApolloMissionsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hermes",
      theme: ThemeData(
        fontFamily: "Montserrat",
        brightness: Brightness.dark,
          accentColor: Colors.yellow,

      ),
      routes: {
        '/': (context) => HomePage(),
        '/nasa-history': (context) => NasaHistoryPage(),
        '/image-of-the-day': (context) => ImageOfTheDayPage(),
        '/programs': (context) => ProgramsPage(),
        '/about': (context) => AboutPage(),
        '/program': (context) =>
            ProgramPage(ModalRoute.of(context).settings.arguments),
        '/mission': (context) =>
            MissionPage(ModalRoute.of(context).settings.arguments),
      },
    );
  }
}
