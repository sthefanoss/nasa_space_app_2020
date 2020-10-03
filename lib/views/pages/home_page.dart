import 'package:apollomissionsapp/main.dart';
import 'package:apollomissionsapp/models/missions_display_mode.dart';
import 'package:apollomissionsapp/models/mission.dart';
import 'package:apollomissionsapp/resources/images.dart';
import 'package:apollomissionsapp/views/widgets/glass_button.dart';
import 'package:apollomissionsapp/views/widgets/mission_tile.dart';
import 'package:apollomissionsapp/views/widgets/missions_list.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1E1D1D),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 2.5,
                      height: MediaQuery.of(context).size.width / 2.5,
                      child: Image.asset(ResourceImages.apollo_09_A),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16, bottom: 48),
                      child: Text(
                        'NOME DO APP',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),

              GlassButton(
                label: "Programa Apollo",
                onTap: () =>
                    Navigator.of(context).pushNamed('/missions/apollo'),
              ),
              GlassButton(
                label: "Programa Artemis",
                onTap: () =>
                    Navigator.of(context).pushNamed('/missions/artemis'),
              ),
              GlassButton(
                label: "Nasa Space Apps",
                onTap: () =>
                    Navigator.of(context).pushNamed('/nasa-space-apps'),
              ),
              GlassButton(
                label: "Sobre",
                onTap: () =>
                    Navigator.of(context).pushNamed('/about'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


