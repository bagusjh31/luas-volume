import 'package:flutter/material.dart';

class BelahKetupat extends StatefulWidget {
  @override
  _BelahKetupatState createState() => _BelahKetupatState();
}

class _BelahKetupatState extends State<BelahKetupat> {
  String hasil = "", diagonal1, diagonal2;

  void onPressed() {
    double d1 = double.parse(this.diagonal1);
    double d2 = double.parse(this.diagonal2);
    setState(() {
      this.hasil = (d1 * d2 / 2).toString();
    });
  }

  void getDiagonal1(String value) {
    setState(() {
      this.diagonal1 = value;
    });
  }

  void getDiagonal2(String value) {
    setState(() {
      this.diagonal2 = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Belah Ketupat'),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('img/belah-ketupat.png'),
              Padding(padding: EdgeInsets.all(5.0)),
              Container(
                child: Text('Rumus luas belah ketupat: L = d1 x d2 / 2'),
              ),
              TextField(
                onChanged: (String value) {
                  getDiagonal1(value);
                },
                decoration: InputDecoration(
                  hintText: 'Diagonal 1',
                  hintStyle: TextStyle(fontStyle: FontStyle.normal),
                ),
              ),
              TextField(
                onChanged: (String value) {
                  getDiagonal2(value);
                },
                decoration: InputDecoration(
                  hintText: 'Diagonal 2',
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
