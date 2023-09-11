import 'package:flutter/material.dart';

class WebAppbar extends StatelessWidget {
  const WebAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Image.asset('assets/images/logo.png',
      fit: BoxFit.cover,),
      actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.search)),
        IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart_checkout_rounded)),
        OutlinedButton(
          onPressed: (){}, 
          child: Text('Comprar'), 
          style: OutlinedButton.styleFrom(
            backgroundColor: Colors.orange,
            foregroundColor: Colors.white,
          ),
          ),
      ],
    );
  }
}