import 'package:covid_app/App/modules/Home/View/HomeScreen.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    Future.delayed(Duration(seconds: 4), () {
      Get.offAll(() => HomeScreen(),
          transition: Transition.rightToLeftWithFade);
    });
  }
}
