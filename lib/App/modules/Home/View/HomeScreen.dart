
import 'package:covid_app/App/modules/Home/View/Countries.dart';
import 'package:covid_app/App/modules/Home/View/Stats.dart';
import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            Image.asset('assets/images/covid-19.png'),
          ],
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          titleSpacing: 2.0,
          title: Text(
            'COVID APP',
            style: TextStyle(
              color: Colors.amber,
              fontWeight: FontWeight.bold,
              fontSize: 16.0.sp,
              wordSpacing: 1.3,
            ),
          ),
        ),
        body: 
             Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(5.0.w),
                  child: TabBar(
                    labelStyle:
                        TextStyle(fontSize: 14.0.sp, fontWeight: FontWeight.w700),
                    indicator: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(4.0.w)),
                    tabs: [
                      Tab(text: 'Stats'),
                      Tab(text: 'Countries'),
                    ],
                  ),
                  
                ),
                Container(
                  height: 77.0.h,
                  child: TabBarView(
                    
                    
                    children: [
                      StatsScreen(),
                      CountriesScreen(),
                      
                                
                    
                                
                                
                                
                                
                    ],
                  
                  
                  ),
                ),
               
              ],
                       )
            
            
          
      
          
        ),
      ),
    );
  }
}
