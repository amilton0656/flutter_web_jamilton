import 'package:flutter/material.dart';
import 'package:web_jamilton/widgets/item_produto.dart';
import 'package:web_jamilton/widgets/mobile_appbar.dart';
import 'package:web_jamilton/widgets/web_appbar.dart';

class LojaVirtual extends StatefulWidget {
  const LojaVirtual({super.key});

  @override
  State<LojaVirtual> createState() => _LojaVirtualState();
}

class _LojaVirtualState extends State<LojaVirtual> {
  @override
  Widget build(BuildContext context) {
    int _ajustarColunas(double larguraTela) {
      if (larguraTela <= 600) return 2;
      if (larguraTela <= 960) return 4;
      return 6;
    }

    return LayoutBuilder(builder: (context, constraint) {
      var largura = constraint.maxWidth;
      var alturaBarra = AppBar().preferredSize.height;

      return Scaffold(
        appBar: largura <= 600
            ? PreferredSize(
                preferredSize: Size(largura, alturaBarra),
                child: const MobileAppbar(),
              )
            : PreferredSize(
                preferredSize: Size(largura, alturaBarra),
                child: const WebAppbar(),
              ),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: GridView.count(
            crossAxisCount: _ajustarColunas(largura),
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            children: [
              ItemProduto(
                'Kit Multimedia', 
                '2.200,00', 
                'assets/images/p1.jpg',
                ),
                ItemProduto(
                'Pneu Goodyear aro 16', 
                '800,00', 
                'assets/images/p2.jpg',
                ),
                ItemProduto(
                'Samsung 9', 
                '4.100,00', 
                'assets/images/p3.jpg',
                ),
                ItemProduto(
                'Samsung Edge', 
                '2.150,00', 
                'assets/images/p4.jpg',
                ),
                ItemProduto(
                'Galaxy 10', 
                '6.200,00', 
                'assets/images/p5.jpg',
                ),
                ItemProduto(
                'Iphone 10', 
                '1.920,00', 
                'assets/images/p6.jpg',
                ),
              Container(color: Colors.red),
              Container(color: Colors.blue),
              Container(color: Colors.green),
              Container(color: Colors.grey),
              Container(color: Colors.orange),
              Container(color: Colors.purple),
            ],
          ),
        ),
      );
    });
  }
}
