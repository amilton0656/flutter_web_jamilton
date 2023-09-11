import 'package:flutter/material.dart';

class ResponsividadeWrap extends StatefulWidget {
  const ResponsividadeWrap({super.key});

  @override
  State<ResponsividadeWrap> createState() => _ResponsividadeWrapState();
}

class _ResponsividadeWrapState extends State<ResponsividadeWrap> {
  @override
  Widget build(BuildContext context) {
    // var altura = MediaQuery.of(context).size.height;
    // var largura = MediaQuery.of(context).size.width;
    // var alturaBarraStatus = MediaQuery.of(context).padding.top;
    // var alturaAppBar = AppBar().preferredSize.height;
    // var alturaItem = (altura - alturaBarraStatus - alturaAppBar) / 3;

    var altura = 100.0;
    var largura = 300.0;

    return Scaffold(
        appBar: AppBar(
          title: const Text('Responsividade'),
        ),
        body: Container(
          color: Colors.black,
          width: MediaQuery.of(context).size.width,
          child: Wrap(
            alignment: WrapAlignment.start,
            spacing: 20,
            runSpacing: 20,
            children: [
              Container(
                height: altura,
                width: largura,
                color: Colors.red,
              ),
              Container(
                height: altura,
                width: largura - 100,
                color: Colors.blue,
              ),
              Container(
                height: altura,
                width: largura,
                color: Colors.orange,
              ),
              Container(
                height: altura,
                width: largura,
                color: Colors.orange,
              ),
            ],
          ),
        ));
  }
}
