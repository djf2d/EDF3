import 'package:flutter/material.dart';
import 'package:edf3/utils/theme.dart';
import '../features/cards/presentation/widgets/card_widget.dart'; // Import your CreditCard widget

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeScreenWidgets();
  }
}

class HomeScreenWidgets extends StatelessWidget {
  const HomeScreenWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0), // Ensuring uniform padding
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Center the CreditCard widget
            const Center(
              child: CreditCard(), // Centering the CreditCard widget
            ),
            const SizedBox(height: 20), // Adding spacing between sections
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.currency_exchange, size: 40),
                Icon(Icons.send, size: 40),
                Icon(Icons.card_giftcard, size: 40),
              ],
            ),
            const SizedBox(height: 20), // Spacing for better readability
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Transactions",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Text(
                  "See All",
                  style: TextStyle(
                    color: AppTheme.hightLighted,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10), // Minor spacing
            Column(
              children: List.generate(
                3,
                (index) => Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8.0,
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5,
                          spreadRadius: 1,
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(
                              10,
                            ), // Rounded icon container
                          ),
                          child: const Center(
                            child: Text("Icon"),
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Expanded(
                          // Ensure text doesn't overflow or cause layout issues
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Title",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text("day/month/year"),
                              Text("Type"),
                            ],
                          ),
                        ),
                        const Text(
                          "Price in JOD",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
