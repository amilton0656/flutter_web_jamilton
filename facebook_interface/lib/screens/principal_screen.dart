import 'package:facebook_interface/data/dados.dart';
import 'package:facebook_interface/screens/home_screen.dart';
import 'package:facebook_interface/utils/responsivo.dart';
import 'package:facebook_interface/widgets/navegacao_abas.dart';
import 'package:facebook_interface/widgets/navegacao_abas_desktop.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class PrincipalScreen extends StatefulWidget {
  const PrincipalScreen({super.key});

  @override
  State<PrincipalScreen> createState() => _PrincipalScreenState();
}

class _PrincipalScreenState extends State<PrincipalScreen> {
  final List<Widget> _telas = [
    const HomeScreen(),
    const Scaffold(backgroundColor: Colors.green),
    const Scaffold(backgroundColor: Colors.yellow),
    const Scaffold(backgroundColor: Colors.purple),
    const Scaffold(backgroundColor: Colors.black54),
    const Scaffold(backgroundColor: Colors.orange),
  ];

  final List<IconData> _icones = [
    Icons.home,
    Icons.ondemand_video,
    Icons.storefront_outlined,
    Icons.gavel_outlined,
    LineIcons.bell,
    Icons.menu,
  ];

  int _indiceAbaSelecionada = 0;

  @override
  Widget build(BuildContext context) {
    final bool isDesktop = Responsivo.isDesktop(context);
    Size tamanho = MediaQuery.of(context).size;

    return DefaultTabController(
      length: _icones.length,
      child: Scaffold(
        appBar: isDesktop
            ? PreferredSize(
                preferredSize: Size(tamanho.width, 100),
                child: NavegacaoAbasDesktop(
                  usuario: usuarioAtual,
                  icones: _icones,
                  indiceAbaSelecionada: _indiceAbaSelecionada,
                  onTap: (index) {
                    setState(() {
                      _indiceAbaSelecionada = index;
                    });
                  },
                ))
            : null,
        body: TabBarView(
          physics: const NeverScrollableScrollPhysics(),
          children: _telas,
        ),
        bottomNavigationBar: isDesktop
            ? null
            : NavegacaoAbas(
              indicadorEmbaixo: false,
                icones: _icones,
                indiceAbaSelecionada: _indiceAbaSelecionada,
                onTap: (index) {
                  setState(() {
                    _indiceAbaSelecionada = index;
                  });
                },
              ),
      ),
    );
  }
}
