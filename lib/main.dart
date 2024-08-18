import 'package:flutter/material.dart';

void main() {
  runApp(const MainMenu());
}

class MainMenu extends StatelessWidget {
  const MainMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(" EDF3 "),
        ),
        body: const Center(
          child: Text("Centered"),
        ),
      ),
    );
  }
}
