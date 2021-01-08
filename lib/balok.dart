import 'package:flutter/material.dart';

class Balok extends StatefulWidget {
  @override
  _BalokState createState() => _BalokState();
}

class _BalokState extends State<Balok> {
  String hasil = "", sisi;

  void onPressed() {
    double s = double.parse(this.sisi);
    setState(() {
      this.hasil = (s * s * s).toString();
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
        title: Text('Balok'),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('img/balok.png'),
              Padding(padding: EdgeInsets.all(5.0)),
              Container(
                child: Text('Rumus volume balok: V = s x s x s'),
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
