import 'package:flutter/material.dart';
import 'header.dart';
import 'Systemstatus.dart';
import 'Option.dart';
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            buildHeader(),
            buildSystemStatus(),
            buildOptions(context),
          ],
        ),
      ),
    );
  }


}
