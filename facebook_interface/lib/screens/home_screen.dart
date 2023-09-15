import 'package:facebook_interface/data/dados.dart';
import 'package:facebook_interface/widgets/area_criar_postagem.dart';
import 'package:facebook_interface/widgets/area_estoria.dart';
import 'package:facebook_interface/widgets/botao_circulo.dart';
import 'package:facebook_interface/widgets/cartao_postagem.dart';
import 'package:facebook_interface/widgets/lista_contatos.dart';
import 'package:facebook_interface/widgets/lista_opcoes.dart';
import 'package:flutter/material.dart';
import 'package:facebook_interface/utils/paleta_cores.dart';
import 'package:line_icons/line_icons.dart';

import '../models/models.dart';
import '../utils/responsivo.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TrackingScrollController _scrollController = TrackingScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Responsivo(
          mobile: HomeMobile(scrollController: _scrollController),
          desktop: HomeDesktop(scrollController: _scrollController),
        ),
      ),
    );
  }
}

class HomeMobile extends StatelessWidget {
  final TrackingScrollController scrollController;

  const HomeMobile({
    super.key,
    required this.scrollController,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: scrollController,
      slivers: [
        //appBar
        SliverAppBar(
          floating: true,
          centerTitle: false,
          backgroundColor: Colors.white,
          title: const Text(
            'facebook - Phone',
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
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 5),
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
    );
  }
}

class HomeDesktop extends StatelessWidget {
  final TrackingScrollController scrollController;
  const HomeDesktop({
    super.key,
    required this.scrollController,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
            flex: 20,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: ListaOpcoes(usuario: usuarioAtual),
            )),
        const Spacer(
          flex: 5,
        ),
        Flexible(
          flex: 60,
          child: CustomScrollView(
            controller: scrollController,
            slivers: [
              //Estorias
              SliverPadding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 5),
                sliver: SliverToBoxAdapter(
                  child: AreaEstoria(
                    usuario: usuarioAtual,
                    estorias: estorias,
                  ),
                ),
              ),

              //Postagem
              SliverToBoxAdapter(
                child: AreaCriarPostagem(
                  usuario: usuarioAtual,
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
        ),
        const Spacer(
          flex: 5,
        ),
        Flexible(flex: 20, child: ListaContatos(usuarios: usuariosOnline)),
      ],
    );
  }
}
