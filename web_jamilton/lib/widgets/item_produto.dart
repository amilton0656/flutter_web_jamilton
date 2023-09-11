import 'package:flutter/material.dart';

class ItemProduto extends StatelessWidget {
  final String descricao;
  final String preco;
  final String image;

  const ItemProduto(this.descricao, this.preco, this.image, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.grey
        )
      ),
      padding: EdgeInsets.all(16),
      child: Column(
        children: [

          Image.asset(image),
      //     Expanded(
      //       flex: 8,
      //       child: Image.asset(image,
      // fit: BoxFit.cover,),
      //     ),
      //     Expanded(child: Text(image)),
      //     Expanded(child: Text('R\$ $preco')),
        ],
      ),
    );
  }
}
