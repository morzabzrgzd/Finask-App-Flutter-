import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IntroController extends GetxController {
  RxInt currentIndex = 0.obs;

  var pageCtrl = PageController();

  changePage(index) {
    currentIndex.value = index;
  }

  nextPage() {
    pageCtrl.nextPage(
        duration: const Duration(milliseconds: 500), curve: Curves.linear);
  }

  List introImages = [
    'assets/icons/Saly3.png',
    'assets/icons/Saly2.png',
    'assets/icons/Saly1.png',
  ];
}
