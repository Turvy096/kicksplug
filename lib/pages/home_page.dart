import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kicksplug/components/bottomgnav_file.dart';
import 'package:kicksplug/resources/controllers.dart';

class HomePage extends StatelessWidget {
final bottomnavController navController = Get.put(bottomnavController());
 HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Obx(()=> pages[navController.currentIndex.value]),
      bottomNavigationBar: BottomgnavFile(
        onTabChange: (index) => navController.navigateBottomBar(index),
      )
    );
  }
}