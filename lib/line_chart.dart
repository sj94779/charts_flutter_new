import 'package:flutter/material.dart';
import 'sales_data.dart';

import 'package:charts_flutter_new/flutter.dart' as charts;

class LineChart extends StatelessWidget {

  // Defining the data
  final data = [
    new SalesData(0, 1500000),
    new SalesData(1, 1735000),
    new SalesData(2, 1678000),
    new SalesData(3, 1890000),
    new SalesData(4, 1907000),
    new SalesData(5, 2300000),
    new SalesData(6, 2360000),
    new SalesData(7, 1980000),
    new SalesData(8, 2654000),
    new SalesData(9, 2789070),
    new SalesData(10, 3020000),
    new SalesData(11, 3245900),
    new SalesData(12, 4098500),
    new SalesData(13, 4500000),
    new SalesData(14, 4456500),
    new SalesData(15, 3900500),
    new SalesData(16, 5123400),
    new SalesData(17, 5589000),
    new SalesData(18, 5940000),
    new SalesData(19, 6367000),
  ];

  _getSeriesData() {
    List<charts.Series<SalesData, num>> series = [
      charts.Series(
        id: "Sales",
        data: data,
        domainFn: (SalesData series, _) => series.year,
        measureFn: (SalesData series, _) => series.sales,
        colorFn: (SalesData series, _) => charts.MaterialPalette.blue.shadeDefault
      )
    ];
    return series;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Line Chart Example'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          height: 550,
          padding: const EdgeInsets.all(10),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  const Text(
                    "Sales of a company over the years",
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: charts.OrdinalComboChart(_getSeriesData(), animate: true,
                        // defaultRenderer: charts.LineRendererConfig(includePoints: true)
                      ),
                  )
                ],
              ),
            ),
          ),
        ),
      )
    );
  }
}

