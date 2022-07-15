import 'package:city/mock/city_data.dart';
import 'package:city/src/screen/detaile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class cityHomeScreen extends StatefulWidget {
  const cityHomeScreen({super.key});

  @override
  State<cityHomeScreen> createState() => _cityHomeScreenState();
}

class _cityHomeScreenState extends State<cityHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text(
          'city',
          style: TextStyle(fontSize: 25, color: Colors.black),
        ),
        titleSpacing: 1.2,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: ListView.builder(
          itemCount: citydata.length,
          itemBuilder: ((context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return detaile(
                    data: citydata[index]['info'].toString(),
                    image: citydata[index]['image'].toString(),
                    name: citydata[index]['name'].toString(),
                  );
                }));
              },
              child: Container(
                margin: EdgeInsets.all(25),
                child: Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.bottomCenter,
                    children: [
                      Container(
                        height: 200,
                        width: 400,
                        decoration: BoxDecoration(
                            boxShadow: [BoxShadow(blurRadius: 10)]),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.network(
                            citydata[index]['image'].toString(),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color: Colors.amber[100],
                              borderRadius: BorderRadius.circular(15)),
                          child: Text(
                            citydata[index]['name'].toString(),
                            style: TextStyle(fontSize: 20),
                          ))
                    ]),
              ),
            );
          })),
    ));
  }
}
