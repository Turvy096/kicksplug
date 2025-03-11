import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kicksplug/components/drawer_resource.dart';
import 'package:kicksplug/models/animated_shoe_container.dart';
import 'package:kicksplug/models/shoe_model_container.dart';
import 'package:kicksplug/resources/shoes_data.dart';

class ShoeDisplay extends StatelessWidget {
  const ShoeDisplay({super.key});

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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("New Arrivals🔥🔥",
                style: TextStyle(
                  fontSize: 20
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.23,
              child: AnimatedShoeContainer()),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 1.0,
                crossAxisSpacing: 1,
                childAspectRatio: 1.0,
                mainAxisExtent: 250
                ),
                itemCount: shoeList.length, 
                itemBuilder: (context, index){
                  return ShoeModelContainer(
                    image: shoeList[index]["image"],
                    name: shoeList[index]["name"],
                    price: shoeList[index]["price"],
                    description: shoeList[index]["description"],
                  );
                }
              ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black12,
        elevation: 0,
        onPressed: ()=> Get.toNamed('/cartscreen'),
        child: Icon(Icons.shopping_bag_rounded,
        color: Colors.grey,
        ),
      ),
    );
  }
}