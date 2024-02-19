import 'package:flutter/material.dart';

Widget buildSystemStatus() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      decoration: BoxDecoration(
        color: Colors.brown[700],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              _buildSystemStatusItem("Temperature", "25°C"),
              _buildSystemStatusItem("Humidity", "60%"),
            ],
          ),
        ),
      ),
    ),
  );
}

Widget _buildSystemStatusItem(String label, String value) {
  return Padding(
    padding: const EdgeInsets.all(18.0),
    child: Row(
      children: [
        Text(
          "$label :",
          style: TextStyle(
            color: Colors.blueGrey[900],
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        Spacer(),
        Text(
          value,
          style: TextStyle(
            color: Colors.blueGrey[900],
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  );
}