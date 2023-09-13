import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_interface/models/models.dart';
import 'package:facebook_interface/utils/paleta_cores.dart';
import 'package:facebook_interface/widgets/imagem_perfil.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class CartaoPostagem extends StatelessWidget {
  final Postagem postagem;

  const CartaoPostagem({super.key, required this.postagem});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.all(8),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //cabecalho
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CabecalhoPostagem(postagem: postagem),
                Text(postagem.descricao),
              ],
            ),
          ),

          //Imagem
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 0),
            child: CachedNetworkImage(
              imageUrl: postagem.urlImagem,
            ),
          ),

          //Estatisticas
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: EstatisticasPostagem(postagem: postagem),
          ),
        ],
      ),
    );
  }
}

class CabecalhoPostagem extends StatelessWidget {
  final Postagem postagem;
  const CabecalhoPostagem({super.key, required this.postagem});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ImagemPerfil(
          urlImagem: postagem.urlImagem,
          foiVisualizado: true,
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                postagem.usuario.nome,
                style: const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Text('${postagem.tempoAtras} - '),
                  Icon(
                    Icons.public,
                    size: 12,
                    color: Colors.grey.shade600,
                  ),
                ],
              )
            ],
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.more_horiz),
        ),
      ],
    );
  }
}

class EstatisticasPostagem extends StatelessWidget {
  final Postagem postagem;
  const EstatisticasPostagem({super.key, required this.postagem});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(4),
              decoration: const BoxDecoration(
                color: PaletaCores.azulFacebook,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.thumb_up,
                size: 10,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 4),
            Expanded(
              child: Text(
                '${postagem.curtidas}',
                style: TextStyle(
                  color: Colors.grey.shade700,
                ),
              ),
            ),
            const SizedBox(width: 4),
            Text(
              '${postagem.comentarios} comentários',
              style: TextStyle(
                color: Colors.grey.shade700,
              ),
            ),
            const SizedBox(width: 20),
            Text(
              '${postagem.compartilhamentos} compartilhamentos',
              style: TextStyle(
                color: Colors.grey.shade700,
              ),
            ),
          ],
        ),
        const Divider(
          thickness: 1.2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BotaoPostagem(
              icone: Icon(
                LineIcons.thumbsUpAlt,
                color: Colors.grey.shade700,
              ),
              texto: 'Curtir',
              onTap: () {},
            ),
            BotaoPostagem(
              icone: Icon(
                LineIcons.alternateCommentAlt,
                color: Colors.grey.shade700,
              ),
              texto: 'Comentar',
              onTap: () {},
            ),
            BotaoPostagem(
              icone: Icon(
                LineIcons.share,
                color: Colors.grey.shade700,
              ),
              texto: 'Compartilhar',
              onTap: () {},
            ),
          ],
        ),
      ],
    );
  }
}

class BotaoPostagem extends StatelessWidget {
  final Icon icone;
  final String texto;
  final VoidCallback onTap;

  const BotaoPostagem({
    super.key,
    required this.icone,
    required this.texto,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        child: InkWell(
          onTap: () {},
          child: Container(
            child: Row(children: [
              icone,
              const SizedBox(width: 4),
              Text(
                texto,
                style: TextStyle(
                    color: Colors.grey.shade700, fontWeight: FontWeight.bold),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
