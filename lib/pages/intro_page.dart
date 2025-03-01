import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IntroPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/logo.png',
                height: MediaQuery.of(context).size.height*0.3,
              ),
            ),
            Text("Just Do It",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.02),
            Text("Brand new sneakers and custom kicks made with premium Quality",
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.15),
            Padding(
              padding: const EdgeInsets.only(
                top: 8.0,
                left: 30.0,
                right: 30.0
              ),
              child: GestureDetector(
                onTap: (){
                  Get.toNamed('/homescreen');
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    color: Colors.grey[900],
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Text("Shop Now",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20
                          )
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}