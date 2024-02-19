import 'package:flutter/material.dart';

import '../HomePage/home.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({Key? key}) : super(key: key);

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  List<WeatherData> weatherDataList = [
    WeatherData(day: 'Monday', maxTemp: 25, minTemp: 18),
    WeatherData(day: 'Tuesday', maxTemp: 24, minTemp: 17),
    WeatherData(day: 'Wednesday', maxTemp: 23, minTemp: 16),
    WeatherData(day: 'Thursday', maxTemp: 26, minTemp: 19),
    WeatherData(day: 'Friday', maxTemp: 27, minTemp: 20),
    WeatherData(day: 'Saturday', maxTemp: 26, minTemp: 19),
    WeatherData(day: 'Sunday', maxTemp: 24, minTemp: 17),

    // Add more data for other days
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Row(
          children: [
            IconButton(onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
            }, icon: Icon(Icons.arrow_back)),
            SizedBox(width: 10,),
            Text("Weather Prediction"),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: weatherDataList.length,
        itemBuilder: (BuildContext context, int index) {
          WeatherData weatherData = weatherDataList[index];
          return ListTile(
            title: Text(weatherData.day),
            subtitle: Text('Max: ${weatherData.maxTemp}°C, Min: ${weatherData.minTemp}°C'),
          );
        },
      ),
    );
  }
}

class WeatherData {
  final String day;
  final int maxTemp;
  final int minTemp;

  WeatherData({required this.day, required this.maxTemp, required this.minTemp});
}