import 'package:apollomissionsapp/models/missions_display_mode.dart';
import 'package:apollomissionsapp/models/program.dart';
import 'package:apollomissionsapp/views/widgets/custom_grid_tile.dart';
import 'package:apollomissionsapp/views/widgets/custom_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ProgramPage extends StatefulWidget {
  final Program program;

  const ProgramPage(this.program);

  @override
  _ProgramPageState createState() => _ProgramPageState();
}

class _ProgramPageState extends State<ProgramPage> {
  MissionsDisplayMode _displayMode = MissionsDisplayMode.gridView;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1E1D1D),
      appBar: AppBar(
        title: Text(widget.program.name),
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
      body: Column(
        children: [
          Container(
            height: 150,
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Hero(
                    tag: widget.program.name,
                    child: Image.asset(widget.program.imageUrl)),
                SizedBox(width: 16),
                Flexible(
                  child: SingleChildScrollView(
                    child: Text(
                      widget.program.description,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            child: CustomGridView(
              displayMode: _displayMode,
              itemCount: widget.program.missions.length,
              itemBuilder: (context, index) => CustomGridTile(
                title: widget.program.missions[index].name,
                displayMode: _displayMode,
                tag: widget.program.missions[index].name,
                image: Image.asset(widget.program.missions[index].logoImagePath),
                onTap: () => Navigator.of(context).pushNamed('/mission',
                    arguments: widget.program.missions[index]),
              ),
            ),
          ),
        ],
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
