import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomgnavFile extends StatelessWidget {
  void Function(int)? onTabChange;
  BottomgnavFile({
    super.key,
    required this.onTabChange
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GNav(
        color: Colors.grey[400],
        activeColor: Colors.grey.shade700,
        tabActiveBorder: Border.all(color: Colors.grey.shade100),
        tabBackgroundColor: Colors.grey.shade100,
        mainAxisAlignment: MainAxisAlignment.center,
        tabBorderRadius: 15,
        onTabChange: (value)=> onTabChange!(value),
        tabs: [
          GButton(
          icon: Icons.home_outlined,
          text: "Home",
        ),
        GButton(
          icon: Icons.shopping_cart_outlined,
          text: "Cart",
        )]
      ),
    );
  }
}