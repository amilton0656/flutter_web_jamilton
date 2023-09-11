import 'package:flutter/material.dart';

class ResponsividadeMediaQuery extends StatefulWidget {
  const ResponsividadeMediaQuery({super.key});

  @override
  State<ResponsividadeMediaQuery> createState() =>
      _ResponsividadeMediaQueryState();
}

class _ResponsividadeMediaQueryState extends State<ResponsividadeMediaQuery> {
  @override
  Widget build(BuildContext context) {
    var altura = MediaQuery.of(context).size.height;
    var largura = MediaQuery.of(context).size.width;
    var alturaBarraStatus = MediaQuery.of(context).padding.top;
    var alturaAppBar = AppBar().preferredSize.height;
    var larguraItem = largura / 3;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsividade'),
      ),
      body: Row(
        children: [
          Container(
            height: altura - alturaBarraStatus - alturaAppBar,
            width: larguraItem,
            color: Colors.red,
          ),
          Container(
            height: altura - alturaBarraStatus - alturaAppBar,
            width: larguraItem,
            color: Colors.blue,
          ),
          Container(
            height: altura - alturaBarraStatus - alturaAppBar,
            width: larguraItem,
            color: Colors.green,
          )
        ],
      ),
    );
  }
}
