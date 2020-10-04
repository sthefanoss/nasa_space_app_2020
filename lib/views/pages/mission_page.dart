import 'package:apollomissionsapp/models/mission.dart';
import 'package:apollomissionsapp/resources/images.dart';
import 'package:apollomissionsapp/views/widgets/glass_button.dart';
import 'package:apollomissionsapp/views/widgets/popup_image.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:flutter/material.dart';

class MissionPage extends StatelessWidget {
  final Mission mission;

  const MissionPage(this.mission);

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1E1D1D),
      appBar: AppBar(
        title: Text(mission.name),
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(32),
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 2.5,
                  height: MediaQuery.of(context).size.width / 2.5,
                  child: Hero(
                      tag: mission.name,
                      child: Image.asset(mission.logoImagePath)),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16, bottom: 32),
                  child: Text(
                    mission.title ?? "",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                if (mission.footerImagePath != null)
                  PopupImage(mission.headerImagePath),
                SizedBox(height: 8),
                Text(
                  mission.description,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            if (mission.footerImagePath != null)
              PopupImage(mission.footerImagePath),
          ],
        ),
      ),
    );
  }
}
