import 'package:covid_app/App/Widgets/Card.dart';
import 'package:covid_app/App/Widgets/piechart.dart';
import 'package:covid_app/App/modules/Home/Controller/covidController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class StatsScreen extends StatelessWidget {
  final controller = Get.put(covidController());
  
  

  @override
  Widget build(BuildContext context) {
    return GetBuilder<covidController>(
        init: covidController(),
        builder: (cont) {
          return cont.islod == false
              ? Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 2.6.h,
                      ),
                      piechrt(),
                      SizedBox(
                        height: 3.0.h,
                      ),
                      Container(
                        height: 46.0.h,
                        width: 39.0.h,
                        color: Colors.black,
                        child: Column(
                          children: [
                            CardCustom(
                             // controller: controller,
                              clr: Colors.blue,
                              txt: 'TOTAL',
                              count: controller.data.cases.toString(),
                            ),
                            CardCustom(
                                //controller: controller,
                                clr: Colors.pinkAccent,
                                txt: 'RECOVERED',
                                count: controller.data.recovered.toString()),
                            CardCustom(
                               // controller: controller,
                                clr: Colors.red,
                                txt: 'DEATHs',
                                count: controller.data.deaths.toString()),
                            CardCustom(
                              //  controller: controller,
                                clr: Colors.lightBlue,
                                txt: 'ACTIVE',
                                count: controller.data.active.toString()),
                            CardCustom(
                               // controller: controller,
                                clr: Colors.orange,
                                txt: 'CRITICAL',
                                count: controller.data.critical.toString()),
                            CardCustom(
                               // controller: controller,
                                clr: Colors.deepOrangeAccent,
                                txt: 'TODAY DEATHs',
                                count: controller.data.todayDeaths.toString()),
                            CardCustom(
                               // controller: controller,
                                clr: Colors.blueGrey,
                                txt: 'POPULATION',
                                count: controller.data.population.toString()),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              : Center(
                  child: SpinKitSpinningLines(
                    color: Colors.white,
                    size: 50.0,
                  ),
                );
        });
  }
}

