import 'package:flutter/material.dart';

import 'custom_bar_chart.dart';

class ChartSection extends StatelessWidget {
  const ChartSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Color(0xFFF5F5F5), // White color
            Color(0xFFFFFFFF), // White color
            Color(0xFFFFFFFF), // White color
            Color(0xFFFFFFFF), // White color
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Your Spending",
              style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 0.5),
                fontSize: 18,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "\$5,678.00",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFF7F9FC),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: DropdownButton<String>(
                    underline: const SizedBox(),
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
                ),
              ],
            ),
            const CustomBarChart(minY: 0, maxY: 2000),
          ],
        ),
      ),
    );
  }
}
