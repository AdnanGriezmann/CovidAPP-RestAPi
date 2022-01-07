// ignore_for_file: unnecessary_null_comparison

import 'package:covid_app/App/Api/ApiService.dart';
import 'package:covid_app/App/modules/Home/Model/CountryModel.dart';
import 'package:get/get.dart';

class CountryController extends GetxController {
  var isLoading = true.obs;
  var data = <Country>[].obs;


  @override
  void onInit() {
    fetchingcountry();
    super.onInit();
  }

  void fetchingcountry() async {
    try {
     
       isLoading.value = true;
      var dtas = await ApiService.getcountry();

      if (dtas != null) {
        data.value = dtas;
     
      }

     
    } finally {
     
      isLoading.value = false;
    }
  }
}
