import 'package:flutter/material.dart';
import 'package:submission/bangun-datar.dart';
import 'package:submission/bangun-ruang.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(15.0),
                  padding: const EdgeInsets.all(3.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black38),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Bangun Datar',
                        style: TextStyle(
                            fontSize: 30.0, fontWeight: FontWeight.bold),
                      ),
                      Image.asset('img/bangun-datar.png'),
                      RaisedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BangungDatar(),
                            ),
                          );
                        },
                        child: Text('Menuju ke halaman'),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                ),
                Container(
                  margin: const EdgeInsets.all(15.0),
                  padding: const EdgeInsets.all(3.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black38),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Bangun Ruang',
                        style: TextStyle(
                            fontSize: 30.0, fontWeight: FontWeight.bold),
                      ),
                      Image.asset('img/bangun-ruang.png'),
                      RaisedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BangunRuang(),
                            ),
                          );
                        },
                        child: Text('Menuju ke halaman'),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
