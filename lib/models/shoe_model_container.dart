import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShoeModelContainer extends StatelessWidget {
  final String image;
  final String name;
  final int price;
  final String description;
   const ShoeModelContainer({
    super.key,
    required this.image,
    required this.name,
    required this.price,
    required this.description
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 4,
        horizontal: 4
      ),
      child: GestureDetector(
        onTap: ()=> Get.toNamed('/shoeinfo',
        arguments: {
          "image": image,
          "name" : name,
          "price" : price,
          "description" : description
        }
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(image,
              height: 75
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(description,
                    style: TextStyle(
                      fontSize: 12,
                      overflow: TextOverflow.ellipsis
                    ),
                    maxLines: 2,
                    ),
                    Text(name,
                    textScaler: TextScaler.linear(1.0),
                    style: TextStyle(
                      overflow: TextOverflow.ellipsis,
                      fontSize: 16,
                    ),
                    ),
                    Text("\$$price.00",
                      style: TextStyle(
                      color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}