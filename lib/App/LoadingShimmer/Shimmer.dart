import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sizer/sizer.dart';

class ShimmerEffect extends StatelessWidget {
  const ShimmerEffect({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
   
    return SizedBox(
      
      child: Shimmer.fromColors(
        baseColor: Colors.grey,
        highlightColor: Colors.grey.shade300,
        child: ListView.builder(
            itemCount: 40,
            itemBuilder: (context, index) {
              return ListTile(
                title: Container(
                  height: 2.0.h,
                  color: Colors.white,
                ),
                subtitle: Padding(
                  padding: EdgeInsets.only(right: 27.0.h),
                  child: Container(
                    height: 2.0.h,
                    color: Colors.white,
                  ),
                ),
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(7.0.h),
                  child: Image.network(
                    'https://media.istockphoto.com/photos/smiling-indian-business-man-working-on-laptop-at-home-office-young-picture-id1307615661?b=1&k=20&m=1307615661&s=170667a&w=0&h=Zp9_27RVS_UdlIm2k8sa8PuutX9K3HTs8xdK0UfKmYk=',
                    width: 15.0.w,
                    height: 11.0.h,
                    fit: BoxFit.fill,
                  ),
                ),
              );
            }),
      ),
    );
  }
}
