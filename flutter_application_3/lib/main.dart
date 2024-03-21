import 'dart:io';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
      body: Container(
        // Add a linear gradient to the background of the whole page
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Color.fromARGB(255, 243, 174, 255), const Color.fromARGB(255, 164, 176, 243)],
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0), // Add some padding around the Column
            child: Column(
              mainAxisSize: MainAxisSize.min, // Center the Column vertically
              children: <Widget>[
                Icon(
                Icons.code, // Adds a Flutter icon
                  size: 100,
                  color: Colors.white,
                ),
                SizedBox(height: 30), // Provides space between the icon and the text
                Text(
                  'Get your image as a text',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20), // Provides space between the text and the button
                ElevatedButton(
  style: ElevatedButton.styleFrom(
    backgroundColor: Colors.white, // Button color
    foregroundColor: Colors.deepPurple, // Text color
  ),
  child: Text('start'),
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SecondPage()),
    );
  },
),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  XFile? _image;
  String? _animal;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      home: Scaffold(
        backgroundColor:  Color.fromARGB(255, 243, 174, 255),
        appBar:  AppBar(
        title:  Center(child:  Text(
          'Lewa7dna 7amla',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color:  Colors.black87, // Adjust the color to fit the gradient or background
          ),
        ),
        ),
         backgroundColor: Color.fromRGBO(255, 255, 255, 1), // Change this color as needed
        elevation: 10,
        ),
        body:Container(
        // Add a linear gradient to the background of the whole page
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Color.fromARGB(255, 243, 174, 255), const Color.fromARGB(255, 164, 176, 243)],
          ),
        ),child: 
         Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
