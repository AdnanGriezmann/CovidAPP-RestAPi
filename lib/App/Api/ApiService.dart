import 'dart:convert';

import 'package:covid_app/App/modules/Home/Model/CountryModel.dart';
import 'package:covid_app/App/modules/Home/Model/CovidModel.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static var client = http.Client();

  static const String baseUrl = 'https://disease.sh/v3/covid-19/';

  static Future<Covid> getval() async {
    String endpoint = 'all';

    var response = await client.get(Uri.parse(baseUrl + endpoint));

    if (response.statusCode == 200) {
      var jsonstr = jsonDecode(response.body);
      return Covid.fromJson(jsonstr);
    } else {
      return Future.error(
          Get.snackbar('Error', 'opps error while fecthing data'));
    }
  }

  static Future<List<Country>> getcountry() async {
    String endpointco = 'countries';

    var response = await http.get(Uri.parse(baseUrl + endpointco));

    if (response.statusCode == 200) {
      var json = response.body;
      return countryFromJson(json);
    } else {
      return Future.error(
          Get.snackbar('Error', 'opps error while fecthing data'));
    }
  }
}
