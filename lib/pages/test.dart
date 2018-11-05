import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
  String title;
  TestPage(String title) {
    this.title = title;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
    );
  }
}
