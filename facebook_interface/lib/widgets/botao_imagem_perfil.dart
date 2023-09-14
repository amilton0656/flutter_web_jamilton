import 'package:facebook_interface/widgets/imagem_perfil.dart';
import 'package:flutter/material.dart';

import '../models/models.dart';

class BotaoImagemPerfil extends StatelessWidget {
  final Usuario usuario;
  final VoidCallback onTap;

  const BotaoImagemPerfil({
    super.key,
    required this.usuario,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          ImagemPerfil(
            foiVisualizado: true,
            urlImagem: usuario.urlImagem,
          ),
          const SizedBox(width: 4),
          Flexible(
            child: Text(
              usuario.nome,
              style: const TextStyle(fontSize: 16),
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
    );
  }
}
