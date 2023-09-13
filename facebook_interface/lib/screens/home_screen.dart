import 'package:facebook_interface/data/dados.dart';
import 'package:facebook_interface/widgets/area_criar_postagem.dart';
import 'package:facebook_interface/widgets/area_estoria.dart';
import 'package:facebook_interface/widgets/botao_circulo.dart';
import 'package:facebook_interface/widgets/cartao_postagem.dart';
import 'package:flutter/material.dart';
import 'package:facebook_interface/utils/paleta_cores.dart';
import 'package:line_icons/line_icons.dart';

import '../models/models.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          //appBar
          SliverAppBar(
            floating: true,
            centerTitle: false,
            backgroundColor: Colors.white,
            title: const Text(
              'facebook',
              style: TextStyle(
                color: PaletaCores.azulFacebook,
                fontSize: 28,
                fontWeight: FontWeight.bold,
                letterSpacing: -1.2,
              ),
            ),
            actions: [
              BotaoCirculo(
                icone: Icons.search,
                IconTamanho: 30,
                onPressed: () {},
              ),
              BotaoCirculo(
                icone: LineIcons.facebookMessenger,
                IconTamanho: 30,
                onPressed: () {},
              ),
            ],
          ),

          //Postagem
          SliverToBoxAdapter(
            child: AreaCriarPostagem(
              usuario: usuarioAtual,
            ),
          ),

          //Estorias
          SliverPadding(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
            sliver: SliverToBoxAdapter(
              child: AreaEstoria(
                usuario: usuarioAtual,
                estorias: estorias,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                Postagem postagem = postagens[index];
                return CartaoPostagem(postagem: postagem);
              },
              childCount: postagens.length,
            ),
          ),
        ],
      ),
    );
  }
}
