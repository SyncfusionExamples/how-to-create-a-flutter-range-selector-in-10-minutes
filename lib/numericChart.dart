import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

Widget buildChart() {
  return Container(
    child: SfCartesianChart(
      margin: const EdgeInsets.all(0),
      primaryXAxis: NumericAxis(isVisible: false),
      primaryYAxis: NumericAxis(isVisible: false, maximum: 4),
      series: <SplineAreaSeries>[
        SplineAreaSeries<Data, double>(
            dataSource: getChartData(),
            xValueMapper: (Data sales, int index) => sales.x,
            yValueMapper: (Data sales, int index) => sales.y)
      ],
    ),
    height: 250,
  );
}

List<Data> getChartData() {
  return <Data>[
    Data(x: 2.0, y: 2.2),
    Data(x: 3.0, y: 3.4),
    Data(x: 4.0, y: 2.8),
    Data(x: 5.0, y: 1.6),
    Data(x: 6.0, y: 2.3),
    Data(x: 7.0, y: 2.5),
    Data(x: 8.0, y: 2.9),
    Data(x: 9.0, y: 3.8),
    Data(x: 10.0, y: 3.7),
  ];
}

class Data {
  Data({required this.x, required this.y});
  final double x;
  final double y;
}
