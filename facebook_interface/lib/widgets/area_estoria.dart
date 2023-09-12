import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_interface/models/models.dart';
import 'package:flutter/material.dart';

class AreaEstoria extends StatelessWidget {
  final Usuario usuario;
  final List<Estoria> estorias;

  const AreaEstoria({
    super.key,
    required this.usuario,
    required this.estorias,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.white,
      child: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
        scrollDirection: Axis.horizontal,
        itemCount: estorias.length,
        itemBuilder: (context, index) {
          Estoria estoria = estorias[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: CartaoEstoria(estoria: estoria),
          );
        },
      ),
    );
  }
}

class CartaoEstoria extends StatelessWidget {
  final Estoria estoria;

  const CartaoEstoria({
    super.key,
    required this.estoria,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: CachedNetworkImage(
            imageUrl: estoria.urlImagem,
            height: double.infinity,
            width: 110,
            fit: BoxFit.cover,
          ),
        )
      ],
    );
  }
}
