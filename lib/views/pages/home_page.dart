import 'package:apollomissionsapp/main.dart';
import 'package:apollomissionsapp/models/missions_display_mode.dart';
import 'package:apollomissionsapp/models/mission.dart';
import 'package:apollomissionsapp/resources/images.dart';
import 'package:apollomissionsapp/views/widgets/glass_button.dart';
import 'package:apollomissionsapp/views/widgets/custom_grid_tile.dart';
import 'package:apollomissionsapp/views/widgets/custom_grid_view.dart';
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
                      child: Image.asset(ResourceImages.logo),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16, bottom: 48),
                      child: Text(
                        'Hermes',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              GlassButton(
                label: "Nasa History",
                onTap: () => Navigator.of(context).pushNamed('/nasa-history'),
              ),
              GlassButton(
                label: "Programs",
                onTap: () => Navigator.of(context).pushNamed('/programs'),
              ),
              GlassButton(
                label: "Imagem do Dia",
                onTap: () =>
                    Navigator.of(context).pushNamed('/image-of-the-day'),
              ),
              GlassButton(
                label: "About",
                onTap: () => Navigator.of(context).pushNamed('/about'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
