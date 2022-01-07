import 'package:covid_app/App/modules/Home/Controller/covidController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pie_chart/pie_chart.dart';

class piechrt extends StatelessWidget {
  final controller = Get.put(covidController());

  final gradientList = <List<Color>>[
    [
      Color.fromRGBO(223, 250, 92, 1),
      Color.fromRGBO(129, 250, 112, 1),
    ],
    [
      Color.fromRGBO(129, 182, 205, 1),
      Color.fromRGBO(91, 253, 199, 1),
    ],
    [
      Color.fromRGBO(175, 63, 62, 1.0),
      Color.fromRGBO(254, 154, 92, 1),
    ]
  ];
  

  @override
  Widget build(BuildContext context) {
    return PieChart(
      dataMap: {
        'TOTAL': double.parse(controller.data.cases.toString()),
        'RECOVERED': double.parse(controller.data.recovered.toString()),
        'DEATH': double.parse(controller.data.deaths.toString()),
      },
      gradientList: gradientList,
      initialAngleInDegree: 0,
      chartLegendSpacing: 42,
      chartType: ChartType.disc,
      chartRadius: MediaQuery.of(context).size.width / 3.0,
      legendOptions: LegendOptions(
        legendPosition: LegendPosition.right,
        legendTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      chartValuesOptions: ChartValuesOptions(
        showChartValuesInPercentage: true,
        showChartValuesOutside: true,
      ),
      animationDuration: Duration(milliseconds: 1200),
    );
  }
}
