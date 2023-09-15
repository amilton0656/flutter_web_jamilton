import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_interface/models/user_model.dart';
import 'package:flutter/material.dart';

import '../utils/responsivo.dart';

class AreaCriarPostagem extends StatelessWidget {
  final Usuario usuario;
  const AreaCriarPostagem({
    super.key,
    required this.usuario,
  });

  @override
  Widget build(BuildContext context) {
    bool isDesktop = Responsivo.isDesktop(context);
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: isDesktop ? 5 : 0),
      elevation: isDesktop ? 1 : 0,
      shape: isDesktop
      ? RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      )
      : null,
      child: Container(
        padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
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
            Divider(
              height: 10,
              thickness: 0.5,
              color: Colors.grey.shade500,
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
    
                    VerticalDivider(
                      width: 8,
                      color: Colors.grey.shade500,
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
    
                    VerticalDivider(
                      width: 8,
                      color: Colors.grey.shade500,
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
      ),
    );
  }
}
