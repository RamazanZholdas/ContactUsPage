import 'package:flutter/material.dart';

class SomeNewPage extends StatefulWidget {
  @override
  _SomeNewPageState createState() => _SomeNewPageState();
}

class _SomeNewPageState extends State<SomeNewPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Fuck me'),
        ),
        body: Stack(

        ),
      ),
    );
  }
}
