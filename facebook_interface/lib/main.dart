import 'package:facebook_interface/screens/home_screen.dart';
import 'package:facebook_interface/screens/principal_screen.dart';
import 'package:facebook_interface/utils/paleta_cores.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Facebook',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      scaffoldBackgroundColor: PaletaCores.scaffold
    ),
    home: PrincipalScreen(),
  ));
}
