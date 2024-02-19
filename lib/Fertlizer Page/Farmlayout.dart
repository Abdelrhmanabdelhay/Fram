import 'package:flutter/material.dart';

class FarmLayout extends StatefulWidget {
  @override
  _FarmLayoutState createState() => _FarmLayoutState();
}

class _FarmLayoutState extends State<FarmLayout> {
  List<bool> isFertilized = List.filled(20, false); // Assuming 20 farm cells for demonstration

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 20, // Number of farm cells
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 5, // Number of columns
        crossAxisSpacing: 4.0,
        mainAxisSpacing: 4.0,
      ),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            setState(() {
              isFertilized[index] = !isFertilized[index];
            });
          },
          child: Container(
            color: isFertilized[index] ? Colors.green : Colors.transparent,
            child: Center(
              child: Text(
                (index + 1).toString(), // Cell number
                style: TextStyle(
                  color: isFertilized[index] ? Colors.white : Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
