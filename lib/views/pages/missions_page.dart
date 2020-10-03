import 'package:apollomissionsapp/models/missions_display_mode.dart';
import 'package:apollomissionsapp/models/mission.dart';
import 'package:apollomissionsapp/views/widgets/missions_list.dart';
import 'package:flutter/material.dart';

class MissionsPage extends StatefulWidget {
  final String title;
  final List<Mission> missions;

  const MissionsPage({
    this.title,
    this.missions,
  });

  @override
  _MissionsPageState createState() => _MissionsPageState();
}

class _MissionsPageState extends State<MissionsPage> {
  MissionsDisplayMode _displayMode = MissionsDisplayMode.gridView;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1E1D1D),
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
            icon: Icon(
              _displayMode == MissionsDisplayMode.gridView
                  ? Icons.grid_on
                  : Icons.list,
              color: Colors.white,
            ),
            onPressed: _toggleDisplayMode,
          ),
        ],
      ),
      body: MissionsList(
        displayMode: _displayMode,
        missions: widget.missions,
      ),
    );
  }

  void _toggleDisplayMode() {
    setState(
      () {
        if (_displayMode == MissionsDisplayMode.gridView)
          _displayMode = MissionsDisplayMode.listView;
        else
          _displayMode = MissionsDisplayMode.gridView;
      },
    );
  }
}
