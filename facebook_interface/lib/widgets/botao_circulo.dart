import 'package:flutter/material.dart';

class BotaoCirculo extends StatelessWidget {
  final IconData icone;
  final double IconTamanho;
  final VoidCallback onPressed;

  const BotaoCirculo({
    super.key,
    required this.icone,
    required this.IconTamanho,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(icone),
        iconSize: IconTamanho,
        color: Colors.black,
      ),
    );
  }
}
