import 'package:apollomissionsapp/main.dart';
import 'package:apollomissionsapp/models/image_of_the_day.dart';
import 'package:apollomissionsapp/models/missions_display_mode.dart';
import 'package:apollomissionsapp/models/mission.dart';
import 'package:apollomissionsapp/resources/images.dart';
import 'package:apollomissionsapp/views/widgets/glass_button.dart';
import 'package:apollomissionsapp/views/widgets/custom_grid_tile.dart';
import 'package:apollomissionsapp/views/widgets/custom_grid_view.dart';
import 'package:apollomissionsapp/views/widgets/popup_image.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ImageOfTheDayPage extends StatefulWidget {
  @override
  _ImageOfTheDayPageState createState() => _ImageOfTheDayPageState();
}

class _ImageOfTheDayPageState extends State<ImageOfTheDayPage> {
  ImageOfTheDay _imageOfTheDay;

  @override
  void initState() {
    Dio().get(
      "https://api.nasa.gov/planetary/apod",
      queryParameters: {
        "api_key": "gchjGh7x7nuzdck1QlHIpYmIWZwFJsRKVeykMASN",
        "date": "2020-10-04",
      },
    ).then((response) {
      if (response.data == null) return;
      print(response);

      setState(() {
        _imageOfTheDay = ImageOfTheDay.fromMap(response.data);
      });
    }).catchError((e) {
      print(e);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1E1D1D),
      appBar: AppBar(
        title: Text("Imagem do Dia da Nasa"),
      ),
      body: SafeArea(
        child: _imageOfTheDay == null
            ? Container()
            : ListView(
                padding: EdgeInsets.all(32),
                children: [
                  Text(
                    _imageOfTheDay.title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  PopupNetworkImage(_imageOfTheDay.url),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 16, bottom: 32),
                        child: Text(
                          '${_imageOfTheDay.copyright}, ${_imageOfTheDay.date}',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        _imageOfTheDay.explanation,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
      ),
    );
  }
}
