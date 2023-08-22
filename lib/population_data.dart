
import 'package:flutter/material.dart';
import 'package:charts_flutter_new/flutter.dart' as charts;


class PopulationData {
  int year;
  int population;
  charts.Color barColor;
  PopulationData({
    required this.year,
    required this.population,
    required this.barColor
  });
}