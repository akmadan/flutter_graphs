import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class RadialChartWidget extends StatefulWidget {
  const RadialChartWidget({Key? key}) : super(key: key);

  @override
  _RadialChartWidgetState createState() => _RadialChartWidgetState();
}

class _RadialChartWidgetState extends State<RadialChartWidget> {
  var chartData = [
    _ChartData('Akshit', 90000, Colors.red),
    _ChartData('Aasif', 80000, Colors.green),
    _ChartData('Karan', 120000, Colors.blue)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Container(
                child: SfCircularChart(
                    backgroundColor: Colors.black,
                    series: <CircularSeries>[
          // RADIAL | DOUGHNUT SERIES
          DoughnutSeries<_ChartData, String>(
            // trackColor: Colors.grey.shade800,
            dataSource: chartData,
            // gap: '3%',
            xValueMapper: (_ChartData data, _) => data.x,
            yValueMapper: (_ChartData data, _) => data.y,
            pointColorMapper: (_ChartData data, _) => data.color,
            // cornerStyle: CornerStyle.bothCurve,
            dataLabelSettings: DataLabelSettings(isVisible: true),
            // radius: '70%',
            // innerRadius: '30%'
          ),
        ]))));
  }
}

class _ChartData {
  _ChartData(this.x, this.y, this.color);
  final String x;
  final num y;
  final Color color;
}
