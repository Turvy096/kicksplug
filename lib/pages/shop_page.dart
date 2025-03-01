import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kicksplug/components/drawer_resource.dart';
import 'package:kicksplug/models/shoe_container.dart';
import 'package:kicksplug/resources/shoes_data.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
      ),
      drawer: Drawer(
        backgroundColor: Colors.black87,
        width: MediaQuery.of(context).size.width*0.8,
        child: DrawerResource(),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Search", style: TextStyle(fontSize: 20),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.search),
                    )
                  ],
                ),
              ),
            ),
          ),
          Text("Everyone flies... some fly longer than others",
            style: TextStyle(fontSize: 15,
            color: Colors.grey
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Hot Picks 🔥",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25
                  ),
                ),
                GestureDetector(
                  onTap: ()=> Get.toNamed('/shoedisplay'),
                  child: Text("see more>>>",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.blue[900]
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Obx(()=> ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: shoeList.length > 5 ? 5: shoeList.length,
              itemBuilder: (context, index){
                return ShoeContainer(
                  image: shoeList[index]["image"], 
                  name: shoeList[index]["name"], 
                  price: shoeList[index]["price"], 
                  description: shoeList[index]["description"]
                );
              }
            ))
           ),
          SizedBox(
            height: MediaQuery.of(context).size.height*0.02,
          )
        ],
      ),
    );
  }
}