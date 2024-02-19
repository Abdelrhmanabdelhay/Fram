import 'package:flutter/material.dart';
import 'item.dart';

class Cards extends StatefulWidget {
  const Cards({Key? key}) : super(key: key);

  @override
  State<Cards> createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  late final List<items> itemList;
  bool isLoading = false; // To track loading state

  @override
  void initState() {
    super.initState();
    // Initialize your list of items here
    itemList = [
      items(img: "assets/grain.png", onTap: () {
        print("object");
      }, la1: "Grain", la2: "Moisture 70%"),
      items(img: "assets/Mango.jpg", onTap: () {}, la1: "Mango", la2: "Moisture 80%"),
      items(img: "assets/rice.jpg", onTap: () {}, la1: "Rice", la2: "Moisture 60%"),
      items(img: "assets/tomato.png", onTap: () {}, la1: "Tomato", la2: "Moisture 30%"),
      // Add more items as needed
    ];
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
      ),
      itemCount: itemList.length,
      itemBuilder: (BuildContext context, int index) {
        final item = itemList[index];
        return GestureDetector(
          onTap: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return StatefulBuilder(
                  builder: (context, setState) {
                    return AlertDialog(
                      title: Text("Message"),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("${item.la1}"),
                          Text("${item.la2}"),
                          SizedBox(height: 20),
                          isLoading
                              ? CircularProgressIndicator()
                              : ElevatedButton(
                            onPressed: () {
                              setState(() {
                                isLoading = true;
                              });
                              // Simulate waiting for 5 seconds
                              Future.delayed(Duration(seconds: 5), () {
                                setState(() {
                                  isLoading = false;
                                });
                                // Add your code for irregation here
                              });
                            },
                            child: Text('Irregation'),
                          ),
                        ],
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('Close'),
                        ),
                      ],
                    );
                  },
                );
              },
            );
          },
          child: Card(
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              side: BorderSide(color: Colors.grey.shade200),
            ),
            elevation: 0.1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 180, // Adjust the height as needed
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(item.img),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          "${item.la1}",
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "${item.la2}",
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
