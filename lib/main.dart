import 'package:flutter/material.dart';
import 'Cropspage/Card.dart';
import 'HomePage/home.dart'; // Import your HomeScreen widget
import 'Cropspage/crops.dart';
import 'views/splashscreen.dart';
void main()  {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'almzr3a als3yda',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: SplashScreen(),
    );
  }
}
