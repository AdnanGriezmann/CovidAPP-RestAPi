// ignore_for_file: must_be_immutable

import 'package:covid_app/App/Widgets/detailrow.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class DetailScreen extends StatelessWidget {
  String name;
  String image;
  int totalcase, totalDeath, totalrecovered, active, todayrec, test;

  DetailScreen({
    required this.name,
    required this.image,
    required this.active,
    required this.test,
    required this.todayrec,
    required this.totalDeath,
    required this.totalcase,
    required this.totalrecovered,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(Icons.arrow_back_ios)),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          titleSpacing: 2.0,
          title: Text(
            name,
            style: TextStyle(
              color: Colors.amber,
              fontWeight: FontWeight.bold,
              fontSize: 15.0.sp,
              wordSpacing: 1.3,
            ),
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 3.0.h),
              child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0)),
                  child: Image.network(
                    image,
                    height: 18.0.h,
                    width: 17.0.h,
                  )),
            ),
            detaill(
              number: totalcase,
              name: 'Cases',
            ),
            detaill(
              number: active,
              name: 'Active',
            ),
            detaill(
              number: totalrecovered,
              name: 'Total Recovered',
            ),
            detaill(
              number: totalDeath,
              name: 'Total Death,s',
            ),
            detaill(
              number: todayrec,
              name: 'Total Received',
            ),
            detaill(
              number: test,
              name: 'Test',
            ),
          ],
        ),
      ),
    );
  }
}
