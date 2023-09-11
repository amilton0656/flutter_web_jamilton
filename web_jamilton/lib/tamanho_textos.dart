import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:flutter/material.dart';

class TamanhoTextos extends StatefulWidget {
  const TamanhoTextos({super.key});

  @override
  State<TamanhoTextos> createState() => _TamanhoTextosState();
}

class _TamanhoTextosState extends State<TamanhoTextos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tamanho de Textos'),),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text('É um fato conhecido de todos que um leitor se distrairá com o'
            ' conteúdo de texto legível de uma página quando estiver examinando'
            ' sua diagramação. A vantagem de usar Lorem Ipsum é que ele tem uma'
            ' distribuição normal de letras, ao contrário de "Conteúdo aqui,'
            ' conteúdo aqui", fazendo com que ele tenha uma aparência similar a de um'
            ' texto legível. Muitos softwares de publicação e editores de páginas'
            ' na internet agora usam Lorem Ipsum como texto-modelo padrão, e uma'
            ' rápida busca por lorem ipsum mostra vários websites ainda em sua'
            ' fase de construção. Várias versões novas surgiram ao longo dos anos,'
            ' eventualmente por acidente, e às vezes de propósito (injetando humor,'
            ' e coisas do gênero).', style: TextStyle(fontSize: 18)),
            SizedBox(height: 50,),
            AutoSizeText('É um fato conhecido de todos que um leitor se distrairá com o'
            ' conteúdo de texto legível de uma página quando estiver examinando'
            ' sua diagramação. A vantagem de usar Lorem Ipsum é que ele tem uma'
            ' distribuição normal de letras, ao contrário de "Conteúdo aqui,'
            ' conteúdo aqui", fazendo com que ele tenha uma aparência similar a de um'
            ' texto legível. Muitos softwares de publicação e editores de páginas'
            ' na internet agora usam Lorem Ipsum como texto-modelo padrão, e uma'
            ' rápida busca por lorem ipsum mostra vários websites ainda em sua'
            ' fase de construção. Várias versões novas surgiram ao longo dos anos,'
            ' eventualmente por acidente, e às vezes de propósito (injetando humor,'
            ' e coisas do gênero).', 
            style: TextStyle(fontSize: 18),
             maxLines: 5,
             minFontSize: 14,
             overflow: TextOverflow.ellipsis,
             ),
          ],
        ),
      ),
    );
  }
}