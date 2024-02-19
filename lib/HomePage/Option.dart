import 'package:app10/Cropspage/crops.dart';
import 'package:app10/LogsPage/Logs.dart';
import 'package:app10/Weather%20Page/Weather.dart';
import 'package:flutter/material.dart';
import 'package:app10/Setting%20Page/setting_page.dart';

import '../Fertlizer Page/Fertlizer.dart';

Widget buildOption(BuildContext context, String label, String iconPath, VoidCallback onTap, String? t) {
  return LayoutBuilder(
    builder: (BuildContext context, BoxConstraints constraints) {
      double cardWidth = constraints.maxWidth < 600 ? 140.0 : 160.0;
      double cardHeight = constraints.maxWidth < 600 ? 140.0 : 160.0;

      return SizedBox(
        width: cardWidth,
        height: cardHeight,
        child: GestureDetector(
          onTap: onTap,
          child: Card(
            color: Colors.lightBlue[50],
            elevation: 10.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: <Widget>[
                    Image.asset(
                      iconPath,
                      width: constraints.maxWidth < 600 ? 48.0 : 64.0,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      label,
                      style: TextStyle(
                        color: Colors.blueGrey[900],
                        fontWeight: FontWeight.bold,
                        fontSize: constraints.maxWidth < 600 ? 14.0 : 20.0,
                      ),
                    ),
                    SizedBox(
                      height: 9.0,
                    ),
                    Text(
                      "$t",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    },
  );
}

Widget buildOptions(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(12.0),
    child: Center(
      child: Wrap(
        spacing: 10,
        runSpacing: 10.0,
        children: <Widget>[
          buildOption(context, "Crops", "assets/grain.png", () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ExplorePage()));
            print("Crops pressed");
          }, ""),
          buildOption(context, "Logs", "assets/note.png", () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => FarmLogsScreen()));
            print("Logs pressed");
          }, ""),
          buildOption(context, "Weather", "assets/weather.png", () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => WeatherPage()));
            print("Weather pressed");
          }, ""),
          buildOption(context, "Settings", "assets/settings.png", () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SettingFragment()));
            print("Settings pressed");
          }, ""),
          buildOption(context, "Fertilizer", "assets/fertilizer.png", () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => FertilizationScreen()));
            print("Fertilizer pressed");
          }, ""),
        ],
      ),
    ),
  );
}
