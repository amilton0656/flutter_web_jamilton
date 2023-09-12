import 'package:flutter/material.dart';

class DiferentesTamanhos extends StatefulWidget {
  const DiferentesTamanhos({super.key});

  @override
  State<DiferentesTamanhos> createState() => _DiferentesTamanhosState();
}

class _DiferentesTamanhosState extends State<DiferentesTamanhos> {
  @override
  Widget build(BuildContext context) {

    String? texto;
    return Scaffold(
      appBar: AppBar(title: Text('Tamanho de Textos'),),
      body:IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              child: Text(texto ?? 'sem valor'),
            ),
            Container(
              width: 200,
              color: Colors.blue,
              child: Text(
              'É um fato conhecido '
              ),
            ),
            Container(
              width: 200,
              color: Colors.blue,
              child: Text(
              'É um fato conhecido de todos que um leitor se distrairá com o'
              ' conteúdo de texto legível de uma página quando estiver examinando'
              ' sua diagramação. A vantagem de usar Lorem Ipsum é que ele tem uma'
              ' distribuição normal de letras, ao contrário de "Conteúdo aqui,'
              ' conteúdo aqui", fazendo com que ele tenha uma aparência similar a de um'
              ),
            ),
            
            
      
          
          ],
        ),
      )
    );
  }
}