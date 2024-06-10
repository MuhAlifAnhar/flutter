import 'package:flutter/material.dart';

void main() => runApp(belajarFlutter());

class belajarFlutter extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Aplikasi Saya"),
          ),
        body: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: BorderSide(color: Colors.red)
            ),
            filled: true,
            fillColor: Color.fromARGB(255, 255, 255, 255),
            labelText: "Username",
            hintText: "Silahkan masukkan text"
          ),
        ),
      ),
    );
  }
  
}