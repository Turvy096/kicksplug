import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShoeInfo extends StatelessWidget {
  final _displayShoe = Get.arguments;
  ShoeInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 25,
            ),
            Container(
              height: MediaQuery.of(context).size.height*0.5,
              child: Image.asset(_displayShoe["image"],
              fit: BoxFit.contain,
              )
            ),
            Text(_displayShoe["description"],
              style: TextStyle(
                fontSize: 20, 
                color: Colors.grey[800]
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(_displayShoe["name"],
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Text("\$${_displayShoe["price"].toString()}.00",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey[700]
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black87
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.remove,
                    color: Colors.white,
                    ),
                  )
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text("Add To Cart".removeAllWhitespace,
                    style: TextStyle(
                      fontSize: 17
                    ),
                  ),
                ),
                 Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black87
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.add,
                    color: Colors.white,
                    ),
                  )
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black87
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("View Cart",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white
                  ),
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}