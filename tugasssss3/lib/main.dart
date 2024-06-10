import 'package:flutter/material.dart';

void main() {
  runApp(KalkulatorApp());
}

class KalkulatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Program Kalkulator',
      home: Kalkulator(),
    );
  }
}

class Kalkulator extends StatefulWidget {
  @override
  KalkulatorState createState() => KalkulatorState();
}

class KalkulatorState extends State<Kalkulator> {
  TextEditingController bil1 = TextEditingController();
  TextEditingController bil2 = TextEditingController();
  TextEditingController bil3 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Program Kalkulator',textAlign: TextAlign.center,),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: bil1,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Bilangan 1',
              ),
            ),
            SizedBox(height: 20.0),
            TextField(
              controller: bil2,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Bilangan 2',
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                calculate();
              },
              child: Text('Tambah'),
            ),
            SizedBox(height: 20.0),
            TextField(
              controller: bil3,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Hasil',
              ),
            ),
            SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }

  void calculate() {
    double bilangan1 = double.tryParse(bil1.text) ?? 0.0;
    double bilangan2 = double.tryParse(bil2.text) ?? 0.0;
    double bilangan3 = double.tryParse(bil3.text) ?? 0.0;
  }
}