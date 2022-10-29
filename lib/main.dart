import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

List<Widget> myCont = List.filled(30,myContainer());

    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            child: GridView.count(
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              crossAxisCount: 3,
              padding: EdgeInsets.all(10),
              scrollDirection: Axis.horizontal,
          
              children: myCont,
            
            ),
          ),
        ),
      ),
    );
  }

  Container myContainer() {
    return Container(
                  //margin: EdgeInsets.all(10),
                  color: Colors.amber,
                );
  }
}