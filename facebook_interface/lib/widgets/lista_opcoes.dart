import 'package:facebook_interface/utils/paleta_cores.dart';
import 'package:facebook_interface/widgets/botao_imagem_perfil.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

import '../models/models.dart';

class ListaOpcoes extends StatelessWidget {
  final Usuario usuario;

  final List<List> _opcoes = const [
    [LineIcons.userFriends, PaletaCores.azulFacebook, 'Amigos'],
    [LineIcons.facebookMessenger, PaletaCores.azulFacebook, 'Mensagens'],
    [LineIcons.flag, PaletaCores.azulFacebook, 'Páginas'],
    [LineIcons.users, PaletaCores.azulFacebook, 'Grupos'],
    [Icons.storefront_outlined, PaletaCores.azulFacebook, 'MarketPlace'],
    [Icons.ondemand_video, Colors.red, 'Assistir'],
    [LineIcons.calendar, Colors.deepPurple, 'Eventos'],
    [LineIcons.chevronCircleDown, Colors.black45, 'Ver mais'],
  ];

  const ListaOpcoes({
    super.key,
    required this.usuario,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 10),
        itemCount: 1 + _opcoes.length,
        itemBuilder: (ctx, index) {
          List item = _opcoes[index - 1];
          if (index == 0) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: BotaoImagemPerfil(
                usuario: usuario,
                onTap: () {},
              ),
            );
          }

          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 6),
            child: BotaoImagemPerfil(
              usuario: usuario,
              onTap: () {},
            ),
          );
        },
      ),
    );
  }
}

class Opcao extends StatelessWidget {
  final IconData icone;
  final Color cor;
  final String texto;
  final VoidCallback ontap;

  const Opcao({
    super.key,
    required this.icone,
    required this.cor,
    required this.texto,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icone,
            color: cor,
            size: 35,
          ),
          const SizedBox(width: 4),
          Flexible(
            child: Text(
              texto,
              style: const TextStyle(fontSize: 16),
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
    );
  }
}
