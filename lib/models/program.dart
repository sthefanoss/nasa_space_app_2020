import 'package:apollomissionsapp/models/mission.dart';

class Program {
  final String name;
  final String description;
  final String imageUrl;
  final List<Mission> missions;

  const Program({
    this.name,
    this.missions,
    this.description,
    this.imageUrl,
  });
}
