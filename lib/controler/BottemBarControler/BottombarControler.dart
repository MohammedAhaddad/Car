import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomBarControler extends GetxController {
  int index = 0;
  PageController pageController = PageController();

  int pagRout(int x) {
    index = x;
    update();
    return index;
  }
}
