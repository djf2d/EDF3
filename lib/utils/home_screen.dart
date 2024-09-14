import 'package:edf3/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:edf3/utils/theme.dart';
import '../features/cards/presentation/widgets/card_widget.dart';
import '../features/home_screen/presentation/widgets/custom_home_button.dart';
import '../features/home_screen/presentation/widgets/transaction_list_item.dart'; // Import your CreditCard widget

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
    List<int> numbers = List.generate(5, (index) => index);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Center the CreditCard widget
            const CreditCard(),
            const SizedBox(height: 20), // Adding spacing between sections
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomHomeButton(
                  text: 'Sell Items',
                  iconPath: AppIcons.sellItems.getPath(),
                ),
                CustomHomeButton(
                  text: 'Transfer',
                  iconPath: AppIcons.transfer.getPath(),
                ),
                CustomHomeButton(
                  text: 'Donate',
                  iconPath: AppIcons.donate.getPath(),
                ),
              ],
            ),
            const SizedBox(height: 40), // Spacing for better readability
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
            const SizedBox(height: 25), // Minor spacing
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => const TransactionListItem(),
              separatorBuilder: (context, index) => const Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 8,
                ),
              ),
              itemCount: numbers.length,
            ),
            const SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}
