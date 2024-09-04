import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();
  // this means that any time we call OnBoardingController.instance we will use the Get.find method to locate the already existing instance

  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs; // obs = observer : allows us to change the design of widgets without state management

  void updatePageIndicator(index) => currentPageIndex.value = index;

  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  void nextPage(){
    if(currentPageIndex.value == 2) {
      //Get.to(LoginScreen());
    } else {
      int page = currentPageIndex.value +1;
      pageController.jumpToPage(page);
    }
  }

  void skipPage(){
    currentPageIndex.value = 2; // we skip to the last page
    pageController.jumpToPage(2);
  }

}