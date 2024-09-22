import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class CustomBarChart extends StatelessWidget {
  const CustomBarChart({
    super.key,
    required this.minY,
    required this.maxY,
  });

  final double minY;
  final double maxY;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 210,
      child: BarChart(
        BarChartData(
          barTouchData: generateToolTipOnTouch(),
          minY: minY,
          maxY: maxY,
          gridData: const FlGridData(drawVerticalLine: false),
          titlesData: getTitlesData(),
          borderData: FlBorderData(show: false),
          barGroups: [
            BarChartGroupData(
              x: 12,
              barRods: [
                // *Income Rod
                BarChartRodData(
                  toY: 1250,
                  color: const Color(0xFF1351F3),
                  width: 20,
                  borderRadius: BorderRadius.circular(6),
                ),
                // *Outcome Rod
                BarChartRodData(
                  toY: 1100,
                  color: const Color(0xFFCFDCFE),
                  width: 20,
                  borderRadius: BorderRadius.circular(6),
                ),
              ],
            ),
            BarChartGroupData(
              x: 13,
              barRods: [
                // *Income Rod
                BarChartRodData(
                  toY: 450,
                  color: const Color(0xFF1351F3),
                  width: 20,
                  borderRadius: BorderRadius.circular(6),
                ),
                // *Outcome Rod
                BarChartRodData(
                  toY: 1400,
                  color: const Color(0xFFCFDCFE),
                  width: 20,
                  borderRadius: BorderRadius.circular(6),
                ),
              ],
            ),
            BarChartGroupData(
              x: 14,
              barRods: [
                // *Income Rod
                BarChartRodData(
                  toY: 557,
                  color: const Color(0xFF1351F3),
                  width: 20,
                  borderRadius: BorderRadius.circular(6),
                ),
                // *Outcome Rod
                BarChartRodData(
                  toY: 1200,
                  color: const Color(0xFFCFDCFE),
                  width: 20,
                  borderRadius: BorderRadius.circular(6),
                ),
              ],
            ),
            BarChartGroupData(
              x: 15,
              barRods: [
                // *Income Rod
                BarChartRodData(
                  toY: 400,
                  color: const Color(0xFF1351F3),
                  width: 20,
                  borderRadius: BorderRadius.circular(6),
                ),
                // *Outcome Rod
                BarChartRodData(
                  toY: 550,
                  color: const Color(0xFFCFDCFE),
                  width: 20,
                  borderRadius: BorderRadius.circular(6),
                ),
              ],
            ),
            BarChartGroupData(
              x: 16,
              barRods: [
                // *Income Rod
                BarChartRodData(
                  toY: 1050,
                  color: const Color(0xFF1351F3),
                  width: 20,
                  borderRadius: BorderRadius.circular(6),
                ),
                // *Outcome Rod
                BarChartRodData(
                  toY: 500,
                  color: const Color(0xFFCFDCFE),
                  width: 20,
                  borderRadius: BorderRadius.circular(6),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  FlTitlesData getTitlesData() {
    return const FlTitlesData(
      leftTitles: AxisTitles(
        sideTitles: SideTitles(showTitles: false),
      ),
      rightTitles: AxisTitles(
        sideTitles: SideTitles(showTitles: false),
      ),
      topTitles: AxisTitles(
        sideTitles: SideTitles(showTitles: false),
      ),
    );
  }

  BarTouchData generateToolTipOnTouch() {
    return BarTouchData(
      enabled: true,
      allowTouchBarBackDraw: true,
      touchTooltipData: BarTouchTooltipData(
        getTooltipItem: (group, groupIndex, rod, rodIndex) {
          double income = group.barRods[0].toY;
          double outcome = group.barRods[1].toY;
          return BarTooltipItem(
            '',
            const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            children: [
              const TextSpan(
                text: '\u2022 ',
                style: TextStyle(fontSize: 25, color: Color(0xFF1351F3)),
              ),
              TextSpan(
                text: '\$$income\n',
              ),
              const TextSpan(
                text: '\u2022 ',
                style: TextStyle(fontSize: 25, color: Color(0xFFCFDCFE)),
              ),
              TextSpan(
                text: '\$$outcome',
              ),
            ],
          );
        },
        getTooltipColor: (group) {
          return const Color(0xFFFFFFFF);
        },
      ),
    );
  }
}
