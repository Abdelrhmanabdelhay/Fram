import 'package:flutter/material.dart';

import '../HomePage/home.dart';

class FarmLogsScreen extends StatelessWidget {
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
            Text("Logs"),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Recent Logs:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
            Expanded(
              child: ListView(
                children: _buildLogItems(), // Function to build log items
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<Widget> _buildLogItems() {
  // Dummy log data
  List<Map<String, String>> logs = [
    {'title': 'Irrigation', 'description': 'Watered crops for 30 minutes'},
    {'title': 'Harvest', 'description': 'Harvested 100 kg of tomatoes'},
    {'title': 'Pest Control', 'description': 'Sprayed pesticides on field A'},
    {'title': 'Fertilization', 'description': 'Applied 20 kg of fertilizer to field B'},
    {'title': 'Planting', 'description': 'Planted seeds for corn crop'},
    {'title': 'Maintenance', 'description': 'Repaired irrigation system pump'},
    {'title': 'Weather Alert', 'description': 'Storm warning for next week'},
    {'title': 'Field Inspection', 'description': 'Inspected crops for signs of disease'},
    {'title': 'Market Update', 'description': 'Prices for corn are expected to rise'},
    {'title': 'Training', 'description': 'Farmers training session scheduled for tomorrow'},
  ];

  // Generate ListTile widgets from dummy log data
  return logs.map((log) {
    return ListTile(
      title: Text(log['title'] ?? ''),
      subtitle: Text(log['description'] ?? ''),
      leading: Icon(Icons.history),
    );
  }).toList();
}
