import 'package:apollomissionsapp/models/missions_display_mode.dart';
import 'package:flutter/material.dart';

class CustomGridTile extends GridTile {
  final MissionsDisplayMode displayMode;
  final tag;
  final Image image;
  final String title;
  final Function onTap;

  CustomGridTile({
    this.displayMode,
    this.title,
    this.image,
    this.tag,
    this.onTap,
  }) : super(
          child: Material(
            borderRadius: BorderRadius.circular(16),
            child: InkWell(
              borderRadius: BorderRadius.circular(16),
              onTap: onTap,
              child: Padding(
                padding: displayMode == MissionsDisplayMode.gridView
                    ? EdgeInsets.all(32)
                    : EdgeInsets.all(56),
                child: Hero(tag: tag, child: image),
              ),
            ),
          ),
          footer: Padding(
            padding: displayMode == MissionsDisplayMode.gridView
                ? EdgeInsets.all(8)
                : EdgeInsets.all(16),
            child: Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: displayMode == MissionsDisplayMode.gridView ? 15 : 20,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        );
}
