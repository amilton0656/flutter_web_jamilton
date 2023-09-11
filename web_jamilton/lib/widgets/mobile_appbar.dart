import 'package:flutter/material.dart';

class MobileAppbar extends StatelessWidget {
  const MobileAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Image.asset('assets/images/logo.png',
      fit: BoxFit.cover,
      ),
      actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.search)),
        IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart_checkout_rounded)),
        IconButton(onPressed: (){}, icon: Icon(Icons.more_vert)),
      ],
    );
  }
}