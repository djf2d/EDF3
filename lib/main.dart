import 'package:flutter/material.dart';
import 'features/cards/presentation/widgets/CardWidget.dart';
import 'features/cards/presentation/widgets/NavigationWidget.dart';

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
          title: const Text("Edfa3"),
        ),
        body: Center(
          child: CreditCard(),
        ),
        bottomNavigationBar: Navigation(),
      ),
    );
  }
}
