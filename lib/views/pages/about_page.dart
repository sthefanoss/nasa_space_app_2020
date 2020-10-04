import 'package:apollomissionsapp/main.dart';
import 'package:apollomissionsapp/models/missions_display_mode.dart';
import 'package:apollomissionsapp/models/mission.dart';
import 'package:apollomissionsapp/resources/images.dart';
import 'package:apollomissionsapp/views/widgets/glass_button.dart';
import 'package:apollomissionsapp/views/widgets/custom_grid_tile.dart';
import 'package:apollomissionsapp/views/widgets/custom_grid_view.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sobre"),
      ),
      backgroundColor: Color(0xFF1E1D1D),
      body: SafeArea(
        child: Container(
        ),
      ),
    );
  }
}


