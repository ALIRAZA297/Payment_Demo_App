import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class StackedLineChartExample extends StatelessWidget {
  const StackedLineChartExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: LineChart(
            LineChartData(
              
              gridData: const FlGridData(show: true),
              titlesData: const FlTitlesData(
                  topTitles: AxisTitles(axisNameSize: Checkbox.width),
                  rightTitles: AxisTitles(axisNameSize: Checkbox.width)),
              borderData: FlBorderData(
                show: false,
              ),
              minX: 20,
              maxX: 26,
              minY: 1500,
              maxY: 4500,
              lineBarsData: [
                LineChartBarData(
                  spots: [
                    const FlSpot(20.5, 2400),
                    const FlSpot(21.2, 2600),
                    const FlSpot(22.1, 1900),
                    const FlSpot(23.8, 3400),
                    const FlSpot(24.5, 2700),
                    const FlSpot(25, 2930),
                    const FlSpot(25, 2930),
                  ],
                  isCurved: true,
                  color: Colors.blue,
                  dotData: const FlDotData(
                    show: false,
                  ),
                  belowBarData: BarAreaData(show: false),
                  curveSmoothness: 0.4,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void main() => runApp(const MaterialApp(home: StackedLineChartExample()));
