import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:kicksplug/pages/cart_page.dart';
import 'package:kicksplug/pages/shop_page.dart';
import 'package:kicksplug/resources/shoes_data.dart';

class bottomnavController extends GetxController {
  var currentIndex = 0.obs;
  void navigateBottomBar(int index)=> currentIndex.value = index;
}
RxList pages = [
    ShopPage(),
    CartPage()
  ].obs;

class AutoScrollController extends GetxController {
  var currentImagePage = 0.obs;
  final PageController pageController = PageController(viewportFraction: 1.0);
  late Timer _timer;
  final int totalPages = shoeList.length> 6? 6: shoeList.length; // Set this dynamically if using a list

  @override
  void onInit() {
    super.onInit();
    startAutoScroll();
  }

  void startAutoScroll() {
    _timer = Timer.periodic(Duration(seconds: 3), (timer) {
      if (pageController.hasClients) {
        int nextPage = currentImagePage.value + 1;

        if (nextPage >= totalPages) {
          pageController.jumpToPage(0); 
          currentImagePage.value = 0;
        } else {
          currentImagePage.value = nextPage;
          pageController.animateToPage(
            nextPage,
            duration: Duration(milliseconds: 500),
            curve: Curves.easeOutCubic,
            );
          }
        }
      }
    );
  }

  @override
  void onClose() {
    _timer.cancel();
    pageController.dispose();
    super.onClose();
  }
}
