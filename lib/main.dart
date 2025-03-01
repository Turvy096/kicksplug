import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kicksplug/pages/shoe_info.dart';
import 'package:kicksplug/pages/cart_page.dart';
import 'package:kicksplug/pages/home_page.dart';
import 'package:kicksplug/pages/intro_page.dart';
import 'package:kicksplug/pages/shoe_display.dart';
import 'package:kicksplug/pages/shop_page.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/cartscreen', page: ()=> CartPage()),
        GetPage(name: '/shopscreen', page: ()=> ShopPage()),
        GetPage(name: '/homescreen', page: ()=> HomePage()),
        GetPage(name: '/shoedisplay', page: ()=> ShoeDisplay()),
        GetPage(name: '/shoeinfo', page: ()=> ShoeInfo())
      ],
    );
  }
}