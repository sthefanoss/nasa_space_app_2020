import 'package:apollomissionsapp/main.dart';
import 'package:apollomissionsapp/models/missions_display_mode.dart';
import 'package:apollomissionsapp/models/mission.dart';
import 'package:apollomissionsapp/resources/images.dart';
import 'package:apollomissionsapp/views/widgets/mission_tile.dart';
import 'package:flutter/material.dart';

class MissionsList extends StatelessWidget {
  final List<Mission> missions;
  final MissionsDisplayMode displayMode;

  const MissionsList({
    this.missions,
    this.displayMode,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(16),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: displayMode == MissionsDisplayMode.gridView ? 2 : 1,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      itemCount: missions.length,
      itemBuilder: (context, index) => MissionTile(
        mission: missions[index],
        displayMode: displayMode,
      ),
    );
  }
}
