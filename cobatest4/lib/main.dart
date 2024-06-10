import 'package:flutter/material.dart';

main() => runApp(aplikasiSaya());


class aplikasiSaya extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Aplikasi Saya")),
        body: Text("Adakah acara"),),);
  }
}