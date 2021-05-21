import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

Widget buildChart() {
  return Container(
    child: SfCartesianChart(
      margin: const EdgeInsets.all(0),
      primaryXAxis: DateTimeAxis(isVisible: false),
      primaryYAxis: NumericAxis(isVisible: false, maximum: 4),
      series: <SplineAreaSeries>[
        SplineAreaSeries<Data, DateTime>(
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
    Data(x: DateTime(2013, 01, 01), y: 3.4),
    Data(x: DateTime(2014, 01, 01), y: 2.8),
    Data(x: DateTime(2015, 01, 01), y: 1.6),
    Data(x: DateTime(2016, 01, 01), y: 2.3),
    Data(x: DateTime(2017, 01, 01), y: 2.5),
    Data(x: DateTime(2018, 01, 01), y: 2.9),
    Data(x: DateTime(2019, 01, 01), y: 3.8),
    Data(x: DateTime(2020, 01, 01), y: 2.0),
  ];
}

class Data {
  Data({required this.x, required this.y});
  final DateTime x;
  final double y;
}
