// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:facebook_interface/models/models.dart';

class Estoria {
  Usuario usuario;
  String urlImagem;
  bool foiVisualizado;

  Estoria({
    required this.usuario,
    required this.urlImagem,
    this.foiVisualizado = false,
  });
}
