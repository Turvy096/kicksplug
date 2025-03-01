import 'package:get/get.dart';
// import 'package:flutter/material.dart';

class ShoesController extends GetxController {
  var cartItems = <Map<String, dynamic>> [].obs;
  void addShoesToCart(Map<String, dynamic> shoe){
    cartItems.add(shoe);
  }

  void removeShoeFromCart(int index){
    cartItems.removeAt(index);
  }
}
RxList shoeList = [
  {
    "name": "Nike Air Max 270",
    "price": 150,
    "image": "assets/airmax270.png",
    "description": "Designed with a massive Air unit for unparalleled cushioning, this sneaker delivers all-day comfort and a bold streetwear look."
  },
  {
    "name": "Nike Air Force 1 Low",
    "price": 110,
    "image": "assets/airforce1.png",
    "description": "A timeless classic featuring premium leather, durable construction, and a legendary Air sole for everyday style and comfort."
  },
  {
    "name": "Nike Dunk Low Retro",
    "price": 120,
    "image": "assets/dunklowretro.png",
    "description": "A skateboarding-inspired sneaker with a heritage design, padded ankle support, and a grippy rubber outsole for ultimate traction."
  },
  {
    "name": "Nike Air Jordan 1 High OG",
    "price": 180,
    "image": "assets/airjordan3.png",
    "description": "The iconic basketball sneaker that started it all, combining premium materials with a timeless design that never goes out of style."
  },
  {
    "name": "Nike Pegasus 40",
    "price": 130,
    "image": "assets/nikepesagus.png",
    "description": "A trusted running shoe built with responsive React foam and a breathable mesh upper for a smooth and lightweight ride."
  },
  {
    "name": "Nike Vapormax Flyknit 2023",
    "price": 210,
    "image": "assets/nikeairmaxplus.png",
    "description": "Featuring a full-length Air sole for a floating sensation, this shoe blends futuristic design with maximum comfort."
  },
  {
    "name": "Nike Blazer Mid '77 Vintage",
    "price": 100,
    "image": "assets/nikeairmaxap.png",
    "description": "A retro basketball shoe with a sleek leather upper, suede details, and a classic herringbone sole for old-school vibes."
  },
  {
    "name": "Nike SB Dunk High Pro",
    "price": 160,
    "image": "assets/NikeSBDunkHighPro.png",
    "description": "Engineered for injury prevention, this high-cushion running shoe provides ultimate support and a smooth transition with every stride."
  },
  {
    "name": "Nike Free Run 5.0",
    "price": 100,
    "image": "assets/airmaxdn.png",
    "description": "A minimalist running shoe with a flexible, barefoot-like feel, designed to enhance natural movement and agility."
  },
  {
    "name": "Nike ZoomX Vaporfly Next",
    "price": 260,
    "image": "assets/airmax90drift.png",
    "description": "The ultimate racing shoe with carbon-fiber propulsion and ZoomX foam for record-breaking speed on race day."
  },
  {
    "name": "Nike Air Zoom Structure 25",
    "price": 140,
    "image": "assets/airjordan1brooklyn.png",
    "description": "A stability running shoe with responsive cushioning and medial support to keep your feet secure and comfortable."
  },
  {
    "name": "Nike LeBron 21",
    "price": 200,
    "image": "assets/airjordan3.png",
    "description": "Built for power and agility, this basketball shoe features Zoom Air cushioning and a lightweight yet durable design for explosive performance."
  },
  {
    "name": "Nike Kyrie 8",
    "price": 140,
    "image": "assets/airmaxdn8.png",
    "description": "Designed for quick cuts and rapid movements, the Kyrie 8 offers superior grip, ankle support, and responsive cushioning for elite gameplay."
  },
  {
    "name": "Nike SB Dunk High Pro",
    "price": 125,
    "image": "assets/giannisimmortality4.png",
    "description": "A high-top skateboarding sneaker with extra padding, durable materials, and grippy soles for superior board control."
  },
  {
    "name": "Nike Air Zoom GT Cut 2",
    "price": 170,
    "image": "assets/jordanheir.png",
    "description": "A low-profile basketball shoe with ultra-responsive Zoom Air cushioning, designed for sharp cuts and quick movements."
  },
  {
    "name": "Nike Cosmic Unity 3",
    "price": 160,
    "image": "assets/jordanheirseries.png",
    "description": "A performance basketball sneaker made with sustainable materials, featuring responsive cushioning and a sleek design for all-around play."
  },
  {
    "name": "Nike Air Max Plus TN",
    "price": 175,
    "image": "assets/jordantatum3.png",
    "description": "With its distinctive wavy design and Tuned Air technology, this sneaker offers both a futuristic look and all-day comfort."
  },
  {
    "name": "Nike Air Huarache",
    "price": 130,
    "image": "assets/jordanluka3.png",
    "description": "A snug-fitting sneaker with a neoprene inner sleeve, offering maximum comfort, flexibility, and a classic 90s aesthetic."
  },
  {
    "name": "Nike Metcon 9",
    "price": 140,
    "image": "assets/nikefreemetcon6.png",
    "description": "The ultimate training shoe built for weightlifting and HIIT workouts, featuring a stable base and durable construction for intense sessions."
  },
  {
    "name": "Nike Zoom Freak 5",
    "price": 130,
    "image": "assets/nikevomer.png",
    "description": "Giannis Antetokounmpo’s signature basketball shoe, built for speed, power, and multidirectional grip on the court."
  },
  {
    "name": "Nike ACG Mountain Fly 2",
    "price": 180,
    "image": "assets/nikezoomxzegama.png",
    "description": "A rugged outdoor sneaker with trail-ready traction, lightweight cushioning, and a durable, water-resistant upper for extreme adventures."
  }
].obs;
