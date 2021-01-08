import 'package:flutter/material.dart';

class Persegi extends StatefulWidget {
  @override
  _PersegiState createState() => _PersegiState();
}

class _PersegiState extends State<Persegi> {
  String hasil = "", sisi;

  void onPressed() {
    double s = double.parse(this.sisi);
    setState(() {
      this.hasil = (s * s).toString();
    });
  }

  void onChanged(String value) {
    setState(() {
      this.sisi = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Persegi'),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('img/persegi.png'),
              Padding(padding: EdgeInsets.all(5.0)),
              Container(
                child: Text('Rumus luas persegi: L = s x s'),
              ),
              TextField(
                onChanged: (String value) {
                  onChanged(value);
                },
                decoration: InputDecoration(
                  hintText: 'Sisi',
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
