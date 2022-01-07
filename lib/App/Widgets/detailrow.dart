
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class detaill extends StatelessWidget {
  const detaill({
    Key? key,
   
    required this.name,
    required this.number,
    
  }) : super(key: key);

  final int number;
  final String name;
  

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: Padding(
        padding: EdgeInsets.all(5.0.w),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(name,
                    style: TextStyle(
                        fontSize: 15.0.sp, fontWeight: FontWeight.bold)),
                Text(number.toString(),style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14.0.sp ,color: Colors.greenAccent),),
              ],
            ),
            Divider(color: Colors.amber,),
          ],
        ),
      ),
    );
  }
}
