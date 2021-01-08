import 'package:flutter/material.dart';

class Segitiga extends StatefulWidget {
  @override
  _SegitigaState createState() => _SegitigaState();
}

class _SegitigaState extends State<Segitiga> {
  String hasil = "", alas, tinggi;

  void onPressed() {
    double a = double.parse(this.alas);
    double t = double.parse(this.tinggi);
    setState(() {
      this.hasil = (a * t / 2).toString();
    });
  }

  void getAlas(String value) {
    setState(() {
      this.alas = value;
    });
  }

  void getTinggi(String value) {
    setState(() {
      this.tinggi = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Segitiga'),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('img/segitiga.png'),
              Padding(padding: EdgeInsets.all(5.0)),
              Container(
                child: Text('Rumus luas segitiga: L = a x t / 2'),
              ),
              TextField(
                onChanged: (String value) {
                  getAlas(value);
                },
                decoration: InputDecoration(
                  hintText: 'Alas',
                  hintStyle: TextStyle(fontStyle: FontStyle.normal),
                ),
              ),
              TextField(
                onChanged: (String value) {
                  getTinggi(value);
                },
                decoration: InputDecoration(
                  hintText: 'Tinggi',
                  hintStyle: TextStyle(fontStyle: FontStyle.normal),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  onPressed();
                },
                child: Text('Hitung!'),
              ),
              Text("${this.hasil}"),
            ],
          ),
        ),
      ),
    );
  }
}
