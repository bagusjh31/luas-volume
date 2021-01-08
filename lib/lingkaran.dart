import 'package:flutter/material.dart';

class Lingkaran extends StatefulWidget {
  @override
  _LingkaranState createState() => _LingkaranState();
}

class _LingkaranState extends State<Lingkaran> {
  String hasil = "", jejari;
  final double phi = 3.14;

  void onPressed() {
    double r = double.parse(this.jejari);
    setState(() {
      this.hasil = (phi * r * r).toString();
    });
  }

  void getJejari(String value) {
    setState(() {
      this.jejari = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lingkaran'),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('img/lingkaran.png'),
              Padding(padding: EdgeInsets.all(5.0)),
              Container(
                child: Text('Rumus luas lingkaran: L = phi x r x r'),
              ),
              TextField(
                onChanged: (String value) {
                  getJejari(value);
                },
                decoration: InputDecoration(
                  hintText: 'Jari-jari',
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
