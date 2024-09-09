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
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: const EdgeInsets.all(10),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5,
                      spreadRadius: 1,
                    )
                  ],
                ),
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      color: Colors.grey[300],
                      child: const Center(child: Text("Icon")),
                    ),
                    const SizedBox(width: 10),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Title"),
                        Text("day/month/year"),
                        Text("Type"),
                      ],
                    ),
                    const Spacer(),
                    const Text(
                      "Price in JOD",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
