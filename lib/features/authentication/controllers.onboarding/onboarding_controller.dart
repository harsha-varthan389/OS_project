import 'package:e_commerce/features/authentication/screens/login/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingController  extends GetxController{
  static OnboardingController get instance{
    return Get.find();
  } 

final pageController = PageController(); // what is this
Rx<int> currentPageIndex = 0.obs;

  void updatePageIndicator(index){
    currentPageIndex.value = index;
  }

  void dotNavigationClick(index){
      currentPageIndex.value = index;
      pageController.jumpToPage(index);
  }
  void nextPage(){
    if(currentPageIndex.value==2){
      Get.offAll(const LoginScreen());

    }else{
    int page = currentPageIndex.value +1;
    pageController.jumpToPage(page);
    }

  }

  void skipPage(){
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }

  
}