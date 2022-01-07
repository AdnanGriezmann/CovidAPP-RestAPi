import 'package:covid_app/App/LoadingShimmer/Shimmer.dart';
import 'package:covid_app/App/modules/Home/Controller/countryController.dart';
import 'package:covid_app/App/modules/Home/View/DetailScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class CountriesScreen extends StatelessWidget {
  final controller = Get.put(CountryController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => controller.isLoading.value == false
          ? Column(
              children: [
                Expanded(
                  child: RawScrollbar(
                    child: ListView.builder(
                        itemCount: controller.data.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              Get.to(
                              
                                () => DetailScreen(
                                  
                                  name: controller.data[index].country,
                                  image:  controller.data[index].countryInfo.flag,
                                  totalcase: controller.data[index].cases,
                                  todayrec: controller.data[index].todayRecovered,
                                  totalDeath: controller.data[index].deaths,
                                  active: controller.data[index].active,
                                  totalrecovered: controller.data[index].recovered,
                                  test: controller.data[index].tests,




                                ),
                                
                                
                                
                                

                              );
                              
                            },
                            child: ListTile(
                              title: Text(
                                controller.data[index].country,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.deepOrange),
                              ),
                              subtitle:
                                  Text(controller.data[index].cases.toString()),
                              leading: ClipRRect(
                                borderRadius: BorderRadius.circular(7.0.h),
                                child: Image.network(
                                  controller.data[index].countryInfo.flag,
                                  width: 15.0.w,
                                  height: 11.0.h,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          );
                        }),
                        
                  ),
                ),
              
              ],
            )
          : ShimmerEffect(),
    );
  }
}
