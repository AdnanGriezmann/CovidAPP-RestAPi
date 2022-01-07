// ignore_for_file: unnecessary_null_comparison

import 'package:covid_app/App/Api/ApiService.dart';
import 'package:covid_app/App/modules/Home/Model/CovidModel.dart';
import 'package:get/get.dart';

class covidController extends GetxController {
  var isLoading = true.obs;
  late Covid data;
  bool islod = true;

  @override
  void onInit() {
    fetching();
    super.onInit();
  }

  void fetching() async {
    try {
      islod = true;
      isLoading.value = true;
      var fdta = await ApiService.getval();
      if (fdta != null) {
        data = fdta;
      }
      update();
    } finally {
      islod = false;
      isLoading.value = false;
    }
  }
}
