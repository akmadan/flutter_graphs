import 'package:flutter/material.dart';
import 'package:flutter_graphs/charts/pieChart.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Graphs',
        debugShowCheckedModeBanner: false,
        home: PieChartWidget());
  }
}