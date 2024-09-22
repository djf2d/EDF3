import 'package:flutter/material.dart';

class TransactionListItem extends StatelessWidget {
  const TransactionListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Colors.grey[300]!, width: 0.75),
      ),
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            color: Colors.grey[300],
            child: const Center(
              child: Text("Icon"),
            ),
          ),
          const SizedBox(width: 25),
          const Column(
            children: [
              Text(
                "Title",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Text("day/month/year"),
            ],
          ),
          const Spacer(),
          const Column(
            children: [
              Text(
                "Price in JOD",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text("Type"),
            ],
          ),
        ],
      ),
    );
  }
}
