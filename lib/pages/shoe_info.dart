import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kicksplug/resources/shoes_data.dart';

class ShoeInfo extends StatelessWidget {
  final ShoesController addCart = Get.put(ShoesController());
  final _displayShoe = Get.arguments;
  ShoeInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: ()=> Get.toNamed('/cartscreen'),
              child: Icon(Icons.shopping_bag_outlined)
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          bottom: 10.0,
          left: 8.0,
          right: 8.0
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.grey.shade50
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height*0.5,
                  child: Image.asset(_displayShoe["image"],
                  fit: BoxFit.contain,
                  )
                ),
                Text(_displayShoe["name"],
                  style: TextStyle(
                    fontSize: 25
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.star, 
                          color: Colors.amber[700],
                          size: 18
                          ),
                        Icon(Icons.star, 
                          color: Colors.amber[700],
                          size: 18
                          ),
                        Icon(Icons.star, 
                          color: Colors.amber[700],
                          size: 18
                          ),
                        Icon(Icons.star, 
                          color: Colors.amber[700],
                          size: 18
                          ),
                        Icon(Icons.star_half, 
                          color: Colors.amber[700],
                          size: 18
                          ),
                        Text("(34)",
                          style: TextStyle(
                            color: Colors.grey[700]
                          ),
                        )
                      ],
                    ),
                    Text("\$${_displayShoe["price"].toString()}.00",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.grey[700]
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text("Description",
                  style: TextStyle(
                    fontSize: 20
                  ),
                ),
                Text(_displayShoe["description"],
                  style: TextStyle(
                    fontSize: 17, 
                    color: Colors.grey[800]
                  ),
                ),
                SizedBox(
                  height: 45,
                ),
                GestureDetector(
                  onTap: (){
                    addCart.addShoesToCart({
                      "name" : _displayShoe["name"],
                      "image" : _displayShoe["image"],
                      "price" : _displayShoe["price"]
                    });
                    Get.snackbar("Success", "Item successfully added to cart",
                    duration: Duration(milliseconds: 1000),
                    backgroundColor: Colors.green[300]
                    );
                  },
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[700]
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Text("Add To Cart",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ]
            )
          ),
        ),
      ),
    );
  }
}