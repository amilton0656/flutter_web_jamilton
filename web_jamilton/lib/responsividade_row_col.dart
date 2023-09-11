import 'package:flutter/material.dart';

class ResponsividadeRowCol extends StatefulWidget {
  const ResponsividadeRowCol({super.key});

  @override
  State<ResponsividadeRowCol> createState() => _ResponsividadeRowColState();
}

class _ResponsividadeRowColState extends State<ResponsividadeRowCol> {
  @override
  Widget build(BuildContext context) {
    var altura = MediaQuery.of(context).size.height;
    var largura = MediaQuery.of(context).size.width;
    var alturaBarraStatus = MediaQuery.of(context).padding.top;
    var alturaAppBar = AppBar().preferredSize.height;
    var alturaItem = (altura - alturaBarraStatus - alturaAppBar) / 3;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsividade'),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              height: alturaItem,
              width: largura,
              color: Colors.red,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              height: alturaItem,
              width: largura,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
