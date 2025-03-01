import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kicksplug/resources/shoes_data.dart';

class ShoeContainer extends StatelessWidget {
  final ShoesController controller = Get.put(ShoesController());
  final String image;
  final String name;
  final int price;
  final String description;
   ShoeContainer({
    super.key,
    required this.image,
    required this.name,
    required this.price,
    required this.description,
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Container(
          width: MediaQuery.of(context).size.width*0.75,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      image,
                      height: 250,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 25,
                      horizontal: 10
                    ),
                    child: SizedBox(
                      child: Text(description,
                      style: TextStyle(
                        overflow: TextOverflow.ellipsis,
                        fontSize: 15,
                        color: Colors.black87
                      ),
                      maxLines: 3,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width*0.5,
                          child: Text(
                            name,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 18, 
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text('\$ $price.00',
                          style: TextStyle(
                            color: Colors.grey
                          ),
                        ),
                      ],
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15)
                    ),
                    child: GestureDetector(
                      onTap: ()=> Get.toNamed('/shoeinfo',
                        arguments: {
                          "name" : name,
                          "image" : image,
                          "description" : description,
                          "price" : price
                        }
                      ),
                      child: Container(
                        color: Colors.black,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Icon(Icons.add, color: Colors.white,),
                        )
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}