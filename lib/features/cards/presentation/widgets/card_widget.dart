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
    return Center(
      child: Container(
        width: 300,
        height: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(
            colors: [
              Color(0xFF0044AE),
              Color(0xFF042962),
              Color(0xFF013586),
              Color(0xFF0064FF),
              Color(0xFF80B2FF),
            ], // Updated gradient colors
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
        ),
        child: const CreditCardWidget(),
      ),
    );
  }
}

class CreditCardWidget extends StatelessWidget {
  const CreditCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
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
}
