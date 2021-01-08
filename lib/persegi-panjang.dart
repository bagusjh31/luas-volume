import 'package:flutter/material.dart';

class PersegiPanjang extends StatefulWidget {
  @override
  _PersegiPanjangState createState() => _PersegiPanjangState();
}

class _PersegiPanjangState extends State<PersegiPanjang> {
  String hasil = "", panjang, lebar;

  void onPressed() {
    double p = double.parse(this.panjang);
    double l = double.parse(this.lebar);
    setState(() {
      this.hasil = (p * l).toString();
    });
  }

  void getPanjang(String value) {
    setState(() {
      this.panjang = value;
    });
  }

  void getLebar(String value) {
    setState(() {
      this.lebar = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Persegi Panjang'),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('img/persegi-panjang.png'),
              Padding(padding: EdgeInsets.all(5.0)),
              Container(
                child: Text('Rumus luas persegi panjang: L = p x l'),
              ),
              TextField(
                onChanged: (String value) {
                  getPanjang(value);
                },
                decoration: InputDecoration(
                  hintText: 'Panjang',
                  hintStyle: TextStyle(fontStyle: FontStyle.normal),
                ),
              ),
              TextField(
                onChanged: (String value) {
                  getLebar(value);
                },
                decoration: InputDecoration(
                  hintText: 'Lebar',
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
