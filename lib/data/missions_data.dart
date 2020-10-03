import 'package:apollomissionsapp/models/mission.dart';
import 'package:apollomissionsapp/resources/images.dart';

abstract class MissionsData{
  static List<Mission> apolloMissions = [
    Mission(
      id: 1,
      name: "Apollo 9",
      description: "ALGUMA COISA MUITO LOCA",
      imagePath: ResourceImages.apollo_09_A,
    ),
    Mission(
      id: 2,
      name: "Apollo 11",
      description: "ALGUMA COISA MUITO LOCA",
      imagePath: ResourceImages.apollo_11_A,
    ),
  ];

  static List<Mission> artemisMissions = [
    Mission(
      id: 1,
      name: "Artemis 9",
      description: "ALGUMA COISA MUITO LOCA",
      imagePath: ResourceImages.apollo_09_A,
    ),
    Mission(
      id: 2,
      name: "Artemis 11",
      description: "ALGUMA COISA MUITO LOCA",
      imagePath: ResourceImages.apollo_11_A,
    ),
  ];
}