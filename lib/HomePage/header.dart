import 'package:flutter/material.dart';


Widget buildHeader() {
  return Padding(
    padding: const EdgeInsets.all(12.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Icon(
          Icons.menu,
          color: Colors.white,
          size: 35.0,
        ),
       Container(
         width: 80,
         height: 80,
         child: Image.asset("assets/a.png"),
       )
      ],
    ),
  );
}