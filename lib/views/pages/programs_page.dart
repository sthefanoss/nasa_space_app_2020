import 'package:apollomissionsapp/data/missions_data.dart';
import 'package:apollomissionsapp/models/missions_display_mode.dart';
import 'package:apollomissionsapp/models/program.dart';
import 'package:apollomissionsapp/views/widgets/custom_grid_tile.dart';
import 'package:apollomissionsapp/views/widgets/custom_grid_view.dart';
import 'package:flutter/material.dart';

class ProgramsPage extends StatefulWidget {
  @override
  _ProgramsPageState createState() => _ProgramsPageState();
}

class _ProgramsPageState extends State<ProgramsPage> {
  MissionsDisplayMode _displayMode = MissionsDisplayMode.gridView;
  final List<Program> programs = MissionsData.programs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1E1D1D),
      appBar: AppBar(
        title: Text("Programs"),
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
      body: CustomGridView(
        displayMode: _displayMode,
        itemCount: programs.length,
        itemBuilder: (context, index) => CustomGridTile(
          title: programs[index].name,
          displayMode: _displayMode,
          tag: programs[index].name,
          image: Image.asset(programs[index].imageUrl),
          onTap: () => Navigator.of(context)
              .pushNamed('/program', arguments: programs[index]),
        ),
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
