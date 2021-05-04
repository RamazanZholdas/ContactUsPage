import 'package:flutter/material.dart';

class SomeNewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Fuck me'),
        ),
        body: Center(
          child: Text('Ye u right'),
        ),
      ),
    );
  }
}
