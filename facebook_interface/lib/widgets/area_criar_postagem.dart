import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_interface/models/user_model.dart';
import 'package:flutter/material.dart';

class AreaCriarPostagem extends StatelessWidget {
  final Usuario usuario;
  const AreaCriarPostagem({
    super.key,
    required this.usuario,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.grey.shade200,
                backgroundImage: CachedNetworkImageProvider(usuario.urlImagem),
              ),
              const SizedBox(
                width: 8,
              ),
              const Expanded(
                child: TextField(
                  decoration: InputDecoration.collapsed(
                    hintText: 'No que você está pensando?',
                  ),
                ),
              )
            ],
          ),
          const Divider(
            height: 10,
            thickness: 0.5,
          ),
          Container(
            height: 40,
            color: Colors.white,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //Ao vivo
                  TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.videocam,
                      color: Colors.red,
                    ),
                    label: const Text(
                      'Ao vivo',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),

                  const VerticalDivider(
                    width: 8,
                    color: Colors.black,
                  ),

                  //Foto
                  TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.photo_library,
                      color: Colors.red,
                    ),
                    label: const Text(
                      'Foto',
                      style: TextStyle(color: Colors.green),
                    ),
                  ),

                  const VerticalDivider(
                    width: 8,
                    color: Colors.black,
                  ),

                  //sala
                  TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.video_call,
                      color: Colors.red,
                    ),
                    label: const Text(
                      'Sala',
                      style: TextStyle(color: Colors.purple),
                    ),
                  ),
                ]),
          )
        ],
      ),
    );
  }
}
