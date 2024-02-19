import 'package:flutter/material.dart';
import '../HomePage/home.dart';
import 'Farmlayout.dart'; // Import the FarmLayout widget

class FertilizationScreen extends StatefulWidget {
  @override
  _FertilizationScreenState createState() => _FertilizationScreenState();
}

class _FertilizationScreenState extends State<FertilizationScreen> {
  String selectedCrop = 'Nitrogen'; // Default selected crop

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
            Text("Fertilization Control"),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Select Fertilizer:',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            DropdownButton<String>(
              value: selectedCrop,
              onChanged: (String? newValue) {
                setState(() {
                  selectedCrop = newValue!;
                });
              },
              items: <String>['Nitrogen', 'Phosphrous', 'in Organic']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            SizedBox(height: 20.0),
            Text(
              'Farm Layout:',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Expanded(
              child: FarmLayout(), // Display farm layout widget
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Add functionality to send fertilization command
                print('Fertilization command sent: Crop - $selectedCrop');
              },
              child: Text('Apply Fertilizer'),
            ),
          ],
        ),
      ),
    );
  }
}
