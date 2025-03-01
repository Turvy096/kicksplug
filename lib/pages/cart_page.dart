import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kicksplug/components/drawer_resource.dart';
import 'package:kicksplug/resources/shoes_data.dart';

class CartPage extends StatelessWidget {
  final ShoesController shoeController = Get.put(ShoesController());
  CartPage({super.key});

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
            children: [
              Obx(()=> shoeController.cartItems.isEmpty ? 
              Center(
                child: Text("Your cart is empty",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ) :
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: shoeController.cartItems.length,
                itemBuilder: (context, index){
                  return Column(
                    children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text("My Cart",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8.0,
                          vertical: 2.0
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8)
                          ),
                          child: ListTile(
                            leading: Image.asset(shoeController.cartItems[index]["image"],
                            width: 50,
                            ),
                            title: Text(shoeController.cartItems[index]["name"]),
                            subtitle: Text("\$ ${shoeController.cartItems[index]["price"]}"),
                            trailing: GestureDetector(
                              onTap: (){
                                shoeController.removeShoeFromCart(index);
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(Icons.delete_rounded,
                                  color: Colors.grey.shade600,                            ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                }
              )
            )
          ],
        ),
      ),
    );
  }
}