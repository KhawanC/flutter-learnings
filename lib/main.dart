import 'package:flutter/material.dart';
import 'pages/home_page.dart';

// ignore_for_file: prefer_const_constructors

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(primarySwatch: Colors.yellow),
    ));