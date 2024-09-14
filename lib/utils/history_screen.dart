import 'package:edf3/features/home_screen/presentation/widgets/transaction_list_item.dart';
import 'package:edf3/utils/theme.dart';
import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              width: double.infinity,
              height: 200,
              color: Colors.grey[300], // Placeholder for graph
              child: Center(
                child: Text(
                  "Graph Placeholder",
                  style: TextStyle(color: Colors.grey[700]),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Your Spending",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                DropdownButton<String>(
                  items: const [
                    DropdownMenuItem(
                      value: "Month",
                      child: Text("Month"),
                    ),
                    DropdownMenuItem(
                      value: "Year",
                      child: Text("Year"),
                    ),
                  ],
                  onChanged: (value) {},
                  hint: const Text("Month"),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Upcoming Payments",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Text(
                  "See All",
                  style: TextStyle(
                      color: AppTheme.hightLighted,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          ...List.generate(
              3,
              (index) => Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: TransactionListItem(),
                  )),
        ],
      ),
    );
  }
}
