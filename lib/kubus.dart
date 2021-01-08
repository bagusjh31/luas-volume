import 'package:flutter/material.dart';

class Kubus extends StatefulWidget {
  @override
  _KubusState createState() => _KubusState();
}

class _KubusState extends State<Kubus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kubus'),
      ),
    );
  }
}
