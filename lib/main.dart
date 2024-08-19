import 'package:flutter/material.dart';
// import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'features/cards/presentation/bloc/cards_bloc.dart';

void main() {
  runApp(const MainMenu());
}

class MainMenu extends StatelessWidget {
  // final String cardNumber = 'XXXX XXXX XXXX XXXX';
  // final String expiryDate = 'MM/YY';
  // final String cardHolderName = 'Card Holder';
  // final String cvvCode = '123';
  // final bool isCvvFocused = false;

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
      ),
    );
  }
}
