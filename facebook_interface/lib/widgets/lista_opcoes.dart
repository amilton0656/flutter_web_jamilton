import 'package:facebook_interface/utils/paleta_cores.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

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
              itemCount: _opcoes.length,
              itemBuilder: (ctx, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: BotaoImagemPerfil(
                    usuario: usuarios[index],
                    onTap: () {},
                  ),
                );
              },
            ),
    );
  }
}
