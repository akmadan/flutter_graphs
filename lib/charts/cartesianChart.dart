import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Cartesian extends StatefulWidget {
  const Cartesian({Key? key}) : super(key: key);

  @override
  _CartesianState createState() => _CartesianState();
}

class _CartesianState extends State<Cartesian> {
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
        title: Text('Line Chart'),
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
              WaterfallSeries<SalesData, int>(
                  //Line | Bar |  Spline  |  Area  |  Column  | Waterfall
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
