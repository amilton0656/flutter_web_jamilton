import 'package:flutter/material.dart';

class RegrasLayout extends StatefulWidget {
  const RegrasLayout({super.key});

  @override
  State<RegrasLayout> createState() => _RegrasLayoutState();
}

class _RegrasLayoutState extends State<RegrasLayout> {
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
        body: Container(
          height: MediaQuery.of(context).size.height,
          // width: 300,
          width: MediaQuery.of(context).size.width,
          color: Colors.orange,
          child: LayoutBuilder(
            builder: (context, constraint) {
              var largura = constraint.maxWidth;
              var dispositivo = "";
              if (largura <= 500) {
                dispositivo = 'Smartphone';
              } else if (largura <= 960) {
                dispositivo = 'Tablet';
              } else {
                dispositivo = 'Desktop';
              }

              return Container(
                child: Text('Largura do container $largura - $dispositivo'),
              );
            },
          ),
        ));
  }
}
