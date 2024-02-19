import 'package:flutter/material.dart';
import 'Card.dart'; // assuming the Cards widget is defined in a file named cards.dart
import 'package:app10/HomePage/home.dart';
import 'item.dart';
class ExplorePage extends StatelessWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Row(
          children: [
            IconButton(onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
            }, icon: Icon(Icons.arrow_back)),
            SizedBox(width: 10,),
            Text("Crops"),
          ],
        ),
      ),
      body:Cards(),
    );
  }
}
