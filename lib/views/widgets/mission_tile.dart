import 'package:apollomissionsapp/main.dart';
import 'package:apollomissionsapp/models/mission.dart';
import 'package:apollomissionsapp/models/missions_display_mode.dart';
import 'package:apollomissionsapp/resources/images.dart';
import 'package:apollomissionsapp/views/pages/mission_page.dart';
import 'package:flutter/material.dart';

class MissionTile extends StatelessWidget {
  final Mission mission;
  final MissionsDisplayMode displayMode;

  const MissionTile({
    this.mission,
    this.displayMode,
  });

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Material(
        borderRadius: BorderRadius.circular(16),
        child: InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: () =>
              Navigator.of(context).pushNamed('/mission', arguments: mission),
          child: Padding(
            padding: displayMode == MissionsDisplayMode.gridView
                ? EdgeInsets.all(32)
                : EdgeInsets.all(56),
            child: Hero(
                tag: mission.id ,
                child: Image.asset(mission.imagePath)),
          ),
        ),
      ),
      footer: Padding(
        padding: displayMode == MissionsDisplayMode.gridView
            ? EdgeInsets.all(8)
            : EdgeInsets.all(16),
        child: Text(
          mission.name,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: displayMode == MissionsDisplayMode.gridView ? 15 : 20,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
