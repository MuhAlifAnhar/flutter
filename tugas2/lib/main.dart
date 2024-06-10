import 'package:flutter/material.dart';

main() => runApp(latihan());


class latihan extends StatelessWidget{
  
  Widget cetaknama(){
    return Scaffold(
      appBar: AppBar(title: Text("Aplikasi Mencetak Nama")),
      body: Text("Muh. Alif Anhar"),
    );
  }
  
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: cetaknama(),
    );
  }
}
