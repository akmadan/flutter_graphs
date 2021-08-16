import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class BarChartWidget extends StatefulWidget {
  const BarChartWidget({Key? key}) : super(key: key);

  @override
  _BarChartWidgetState createState() => _BarChartWidgetState();
}

class _BarChartWidgetState extends State<BarChartWidget> {
  @override
  Widget build(BuildContext context) {
    final List<SalesData> chartData = [
      SalesData(2010, 35, Colors.red),
      SalesData(2011, 28, Colors.blue),
      SalesData(2012, 34, Colors.green),
      SalesData(2013, 32, Colors.deepOrange),
      SalesData(2014, 40, Colors.yellow)
    ];

    return Scaffold(
        body: Scaffold(
      appBar: AppBar(
        title: Text('Bar Chart'),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Center(
            child: Container(
                // width: 200,
                child: SfCartesianChart(
                    title: ChartTitle(text: 'Sales by Year'),
                    legend: Legend(isVisible: true),
                    series: <ChartSeries>[
              // Renders line chart
              LineSeries<SalesData, int>(
                  dashArray: <double>[10, 5], //length, gap
                  color: Colors.red,
                  dataSource: chartData,
                  pointColorMapper: (SalesData sales, _) => sales.color,
                  xValueMapper: (SalesData sales, _) => sales.year,
                  yValueMapper: (SalesData sales, _) => sales.sales)
            ]))),
      ),
    ));
  }
}

class SalesData {
  SalesData(this.year, this.sales, this.color);
  final int year;
  final double sales;
  final Color color;
}
