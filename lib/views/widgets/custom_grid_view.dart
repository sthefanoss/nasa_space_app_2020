import 'package:apollomissionsapp/models/missions_display_mode.dart';
import 'package:flutter/material.dart';

class CustomGridView extends GridView {
  final MissionsDisplayMode displayMode;

  CustomGridView({
    this.displayMode,
    int itemCount,
    Widget Function(BuildContext, int) itemBuilder,
  }) : super.builder(
          padding: const EdgeInsets.all(16),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: displayMode == MissionsDisplayMode.gridView ? 2 : 1,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
          ),
          itemCount: itemCount,
          itemBuilder: itemBuilder,
        );
}
