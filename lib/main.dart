import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Heelo fltter!"),
        ),
        body: Center(
          child: Text("Hello wolrd!"),
        ),
      ),
    );
  }
}
