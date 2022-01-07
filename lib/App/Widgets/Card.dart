
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CardCustom extends StatelessWidget {
  const CardCustom({
    Key? key,
    //required this.controller,
    required this.clr,
    required this.txt,
    required this.count,
  }) : super(key: key);

  //final covidController controller;
  final Color clr;
  final String txt;
  final String count;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2.0.w),
      child: Container(
        height: 4.4.h,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0.w),
          ),
          elevation: 0,
          color: clr,
          child: Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  txt,
                  style:
                      TextStyle(fontSize: 14.0.sp, fontWeight: FontWeight.bold),
                ),
                Text(count,
                    style: TextStyle(
                        fontSize: 14.0.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.black)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
