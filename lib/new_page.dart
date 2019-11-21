import 'package:flutter/material.dart';


class NewPage extends StatelessWidget {
final String title;
  NewPage(this.title);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Pade"),

      ),
      body: Center(
        child: Text("Second Pade"),
      ),
    );
  }
}
