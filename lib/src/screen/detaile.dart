import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class detaile extends StatelessWidget {
  const detaile(
      {super.key, required this.name, required this.image, required this.data});
  final String name;
  final String image;
  final String data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: IconButton(
        icon: Icon(
          Icons.arrow_back,
          size: 35,
        ),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 300,
                  width: 500,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(
                      image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  child: Text(
                    name,
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        wordSpacing: 2),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.amber[100]),
                child: Text(
                  data,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      wordSpacing: 1),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
