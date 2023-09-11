import 'package:flutter/material.dart';

class Orientacao extends StatefulWidget {
  const Orientacao({super.key});

  @override
  State<Orientacao> createState() => _OrientacaoState();
}

class _OrientacaoState extends State<Orientacao> {
  @override
  Widget build(BuildContext context) {
    // var altura = MediaQuery.of(context).size.height;
    // var largura = MediaQuery.of(context).size.width;
    // var alturaBarraStatus = MediaQuery.of(context).padding.top;
    // var alturaAppBar = AppBar().preferredSize.height;
    // var alturaItem = (altura - alturaBarraStatus - alturaAppBar) / 3;

    // var altura = 200.0;
    // var largura = 300.0;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsividade'),
      ),
      body: OrientationBuilder(
        builder: (context, orientacao) {
          return GridView.count(
            crossAxisCount: orientacao == Orientation.portrait ? 2 : 4,
            children: [
              Container(color: Colors.red),
              Container(color: Colors.blue),
              Container(color: Colors.green),
              Container(color: Colors.grey),
              Container(color: Colors.orange),
              Container(color: Colors.purple),
            ],
          );

          // return Container(
          //   child: orientacao == Orientation.portrait
          //       ? Text('Portarit')
          //       : Text('Landscape'),
          // );
        },
      ),
    );
  }
}
