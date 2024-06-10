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
  TextEditingController hasil = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Program Kalkulator',textAlign: TextAlign.center,),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
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
            ElevatedButton(
              onPressed: () {
                calculated();
              },
              child: Text('Kurang'),
            ),
            SizedBox(height: 20.0),
            TextField(
              controller: hasil,
              readOnly: true,
              decoration: InputDecoration(
                labelText: 'Hasil',
              ),
            ),
          ],
        ),
      ),
    );
  }

  void calculate() {
    double bilangan1 = double.tryParse(bil1.text) ?? 0.0;
    double bilangan2 = double.tryParse(bil2.text) ?? 0.0;
    double result = bilangan1 + bilangan2;
    setState(() {
      hasil.text = result.toString();
    });
  }

  void calculated() {
    double bilangan1 = double.tryParse(bil1.text) ?? 0.0;
    double bilangan2 = double.tryParse(bil2.text) ?? 0.0;
    double result = bilangan1 - bilangan2;
    setState(() {
      hasil.text = result.toString();
    });
  }
}