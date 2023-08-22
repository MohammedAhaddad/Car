import 'package:car/moodle/Authentication/Authentication.dart';
import 'package:car/view/MainPages/MainScrren.dart';
import 'package:car/view/MainPages/home/Home.dart';
import 'package:get/get.dart';

class GoogleAuth extends GetxController {
  static signInGoogle() {
    Authentication authentication = Authentication();
    authentication.signInWithGoogle();
    Get.offAll(() => Home());
  }
}
