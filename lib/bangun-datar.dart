import 'package:flutter/material.dart';
import 'package:submission/belah-ketupat.dart';
import 'package:submission/lingkaran.dart';
import 'package:submission/persegi-panjang.dart';
import 'package:submission/persegi.dart';
import 'package:submission/segitiga.dart';

class BangungDatar extends StatefulWidget {
  @override
  _BangungDatarState createState() => _BangungDatarState();
}

class _BangungDatarState extends State<BangungDatar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bangun Datar'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              child: ListTile(
                leading: Image.asset('img/persegi.png'),
                title: Text('Persegi'),
                subtitle: Text('Menghitung luas persegi'),
                isThreeLine: true,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Persegi(),
                    ),
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Image.asset('img/persegi-panjang.png'),
                title: Text('Persegi Panjang'),
                subtitle: Text('Menghitung luas persegi panjang'),
                isThreeLine: true,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PersegiPanjang(),
                    ),
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Image.asset('img/lingkaran.png'),
                title: Text('Lingkaran'),
                subtitle: Text('Menghitung luas lingkaran'),
                isThreeLine: true,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Lingkaran(),
                    ),
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Image.asset('img/segitiga.png'),
                title: Text('Segitiga'),
                subtitle: Text('Menghitung luas segitiga'),
                isThreeLine: true,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Segitiga(),
                    ),
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Image.asset('img/belah-ketupat.png'),
                title: Text('Belah Ketupat'),
                subtitle: Text('Menghitung luas belah ketupat'),
                isThreeLine: true,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BelahKetupat(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
