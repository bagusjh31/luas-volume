import 'package:flutter/material.dart';
import 'package:submission/balok.dart';
import 'package:submission/kerucut.dart';
import 'package:submission/kubus.dart';

class BangunRuang extends StatefulWidget {
  @override
  _BangunRuangState createState() => _BangunRuangState();
}

class _BangunRuangState extends State<BangunRuang> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bangun Ruang'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              child: ListTile(
                leading: Image.asset('img/balok.png'),
                title: Text('Balok'),
                subtitle: Text('Menghitung volume balok'),
                trailing: Icon(Icons.more_vert),
                isThreeLine: true,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Balok(),
                    ),
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Image.asset('img/kubus.png'),
                title: Text('Kubus'),
                subtitle: Text('Menghitung valume kubus'),
                trailing: Icon(Icons.more_vert),
                isThreeLine: true,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Kubus(),
                    ),
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Image.asset('img/kerucut.png'),
                title: Text('Kerucut'),
                subtitle: Text('Menghitung Volume kerucut'),
                trailing: Icon(Icons.more_vert),
                isThreeLine: true,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Kerucut(),
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
