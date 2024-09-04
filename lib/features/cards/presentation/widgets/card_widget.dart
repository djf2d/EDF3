import 'dart:math';
import 'package:flutter/material.dart';

class CreditCard extends StatefulWidget {
  const CreditCard({super.key});

  @override
  State<CreditCard> createState() => _CreditCardState();
}

class _CreditCardState extends State<CreditCard> {
  double horizontalDrag = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragUpdate: (horizontal) {
        setState(() {
          horizontalDrag += horizontal.delta.dx;
          horizontalDrag %= 360;
        });
      },
      child: Transform(
        transform: Matrix4.identity()
          ..setEntry(3, 2, 0.001)
          ..rotateY(pi / 180 * horizontalDrag),
        alignment: Alignment.center,
        child: Container(
          width: 300,
          height: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: const LinearGradient(
              colors: [
                Color(0xFF0055FF),
                Color(0xFFA0BFFF)
              ], // Updated gradient colors
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: horizontalDrag <= 90 || horizontalDrag >= 270
              ? cardFront()
              : cardBack(),
        ),
      ),
    );
  }

  Widget cardFront() {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Stack(
        children: <Widget>[
          // Card Holder and Expiry date texts
          const Positioned(
            left: 15,
            top: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Card Holder',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  'Expiry date',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          // Card Number
          const Positioned(
            left: 5,
            top: 80,
            child: Text(
              'XXXX  XXXX  XXXX  XXXX',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
              ),
            ),
          ),
          // Logo
          const Positioned(
            right: 15,
            top: 20,
            child: Icon(
              Icons.account_balance_wallet,
              color: Colors.white70,
              size: 30,
            ),
          ),
          // Visa and Contactless Icons
          Positioned(
            right: 0,
            bottom: -5,
            child: Row(
              children: [
                Image.asset(
                  'assets/visa.png',
                  height: 30,
                  fit: BoxFit.cover,
                ),
                const SizedBox(width: 10),
                const Icon(
                  Icons.wifi,
                  color: Colors.white70,
                  size: 24,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget cardBack() {
    return Container(
      padding: const EdgeInsets.only(top: 18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: const LinearGradient(
          colors: [
            Color(0xFF0055FF),
            Color(0xFF007BFF)
          ], // Updated gradient colors
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        children: <Widget>[
          Container(
            height: 40,
            color: Colors.black.withOpacity(0.8),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
            child: Row(
              children: [
                Container(
                  height: 20,
                  width: 100,
                  color: Colors.white70,
                ),
                const Spacer(),
                Container(
                  height: 20,
                  width: 30,
                  color: Colors.white70,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
