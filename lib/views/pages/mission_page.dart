import 'package:apollomissionsapp/models/mission.dart';
import 'package:apollomissionsapp/resources/images.dart';
import 'package:apollomissionsapp/views/widgets/glass_button.dart';
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
            Container(
              width: MediaQuery.of(context).size.width / 2.5,
              height: MediaQuery.of(context).size.width / 2.5,
              child: Hero(
                tag: mission.id,
                child: Image.asset(mission.imagePath),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
