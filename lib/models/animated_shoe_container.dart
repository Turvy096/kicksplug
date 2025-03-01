import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kicksplug/resources/controllers.dart';
import 'package:kicksplug/resources/shoes_data.dart';

class AnimatedShoeContainer extends StatelessWidget {
  final AutoScrollController _controller = Get.put(AutoScrollController());
  AnimatedShoeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        children: [
          Obx(()=> SizedBox(
            height: 180,
            child: PageView.builder(
              controller: _controller.pageController,
              itemCount: shoeList.length > 6 ? 6: shoeList.length,
              itemBuilder: (context, index){
                return AnimatedContainer(
                  margin: EdgeInsets.symmetric(
                    horizontal: 10.0,
                    vertical: 10
                  ),
                  duration: Duration(
                    milliseconds: 500
                  ),
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [ 
                      BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 2.0,
                      blurRadius: 5,
                      offset: Offset(4, 4)
                    ),
                    BoxShadow(
                      color: Colors.white.withOpacity(0.6),
                      spreadRadius: 2.0,
                      blurRadius: 5,
                      offset: Offset(-4, -4)
                    )
                    ]
                  ),
                  child: Image.asset(shoeList[index]["image"],
                  fit: BoxFit.contain,
                  ),
                );
              }
              ),
          )
          ),
        ],
      ),
    );
  }
}