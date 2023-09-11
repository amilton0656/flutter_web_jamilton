import 'package:flutter/material.dart';

class TamanhoProporcional extends StatefulWidget {
  const TamanhoProporcional({super.key});

  @override
  State<TamanhoProporcional> createState() => _TamanhoProporcionalState();
}

class _TamanhoProporcionalState extends State<TamanhoProporcional> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Tamanho de Textos'),
        ),
        body: Container(
          color: Colors.orange,
          child: const FractionallySizedBox(
            widthFactor: 0.5,
            heightFactor: 0.5,
            alignment: Alignment.topLeft,
            child: Text('Tamanho Prtoporcional'),
          ),
        ));
  }
}
