import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Chart extends StatelessWidget {
  Chart({super.key});
  List<ChartSampleData> chartData = <ChartSampleData>[
    ChartSampleData('France', 84),
    ChartSampleData('Spain', 68),
    ChartSampleData('US', 77),
    ChartSampleData('Italy', 50),
    ChartSampleData('Mexico', 32),
    ChartSampleData('UK', 34),
  ];

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      isTransposed: true,
      primaryXAxis: CategoryAxis(),
      series: <BarSeries<ChartSampleData, String>>[
        BarSeries<ChartSampleData, String>(
          // Binding the chartData to the dataSource of the bar series.
          dataSource: <ChartSampleData>[
            ChartSampleData('France', 84),
            ChartSampleData('Spain', 68),
            ChartSampleData('US', 77),
            ChartSampleData('Italy', 50),
            ChartSampleData('Mexico', 32),
            ChartSampleData('UK', 34),
          ],
          xValueMapper: (ChartSampleData sales, _) => sales.year,
          yValueMapper: (ChartSampleData sales, _) => sales.sales,
        ),
      ],
    );
  }
}

class ChartSampleData {
  ChartSampleData(this.year, this.sales);
  final String year;
  final double sales;
}
