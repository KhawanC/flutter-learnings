import 'package:flutter/material.dart';

// ignore_for_file: prefer_const_constructors

void main() => runApp(const MaterialApp(
      home: Aplicativo(),
    ));

class Aplicativo extends StatelessWidget {
  const Aplicativo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(



      appBar: AppBar(
        title: Text(
          "Eclipse lunar",
          style: TextStyle(
              fontSize: 24,
              letterSpacing: 5,
              fontWeight: FontWeight.bold,
              color: Colors.yellow,
              fontFamily: "Quicksand"),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),


      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(20),
                color: Colors.green,
                child: Text("Hello"),
              ),
              Container(
                padding: EdgeInsets.all(20),
                color: Colors.grey,
                child: Text("Row"),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.all(30),
            color: Colors.pink,
            child: Text("Hello Column 2"),
          ),
          Container(
            padding: EdgeInsets.all(20),
            color: Colors.cyan,
            child: Text("Hello Column"),
          ),
          Container(
            padding: EdgeInsets.all(40),
            color: Colors.yellow,
            child: Text("Hello Column 3"),
          ),
        ],
      ),


      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {},
        child: Text("click"),
      ),
    );
  }
}
