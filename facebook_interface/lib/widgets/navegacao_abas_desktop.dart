import 'package:facebook_interface/widgets/botao_circulo.dart';
import 'package:facebook_interface/widgets/botao_imagem_perfil.dart';
import 'package:facebook_interface/widgets/navegacao_abas.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

import '../models/models.dart';
import '../utils/paleta_cores.dart';

class NavegacaoAbasDesktop extends StatelessWidget {
  final List<IconData> icones;
  final int indiceAbaSelecionada;
  final Function(int) onTap;
  final Usuario usuario;

  const NavegacaoAbasDesktop({
    super.key,
    required this.icones,
    required this.indiceAbaSelecionada,
    required this.onTap,
    required this.usuario,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 65,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.black12, offset: Offset(0, 2), blurRadius: 4)
        ],
      ),
      child: Row(
        children: [
          const Expanded(
            child: Text(
              'facebook',
              style: TextStyle(
                color: PaletaCores.azulFacebook,
                fontSize: 32,
                fontWeight: FontWeight.bold,
                letterSpacing: -1.2,
              ),
            ),
          ),
          Expanded(
            child: NavegacaoAbas(
              icones: icones,
              indiceAbaSelecionada: indiceAbaSelecionada,
              onTap: onTap,
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                BotaoImagemPerfil(
                  usuario: usuario,
                  onTap: (){},

                ),
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
          ),
        ],
      ),
    );
  }
}
