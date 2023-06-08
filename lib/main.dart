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


      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Hello Word"),
          Container(
            padding: EdgeInsets.all(50),
            color: Colors.green,
            child: Text("Hello Container"),
          ),
          TextButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.black),
            ),
            child: Text("Hello Click"),
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
