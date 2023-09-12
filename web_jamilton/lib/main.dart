import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:web_jamilton/diferentes_tamanhos.dart';

// import 'package:flutter/cupertino.dart';

import 'package:web_jamilton/loja_virtual.dart';
import 'package:web_jamilton/orientacao.dart';
import 'package:web_jamilton/regras_layout.dart';
import 'package:web_jamilton/responsividade_media_query.dart';
import 'package:web_jamilton/responsividade_row_col.dart';
import 'package:web_jamilton/responsividade_wrap.dart';
import 'package:web_jamilton/tamanho_proporcional.dart';
import 'package:web_jamilton/tamanho_textos.dart';

// import 'basic.dart';
// import 'custom_plugin.dart';

void main() {
  runApp(
    const MaterialApp(
      // home: ResponsividadeMediaQuery(),
      // home: ResponsividadeRowCol(),
      // home: ResponsividadeWrap(),
      // home: Orientacao(),
      // home: RegrasLayout(),
      // home: LojaVirtual(),
      // home: TamanhoTextos(),
      // home: TamanhoProporcional(),
      home: DiferentesTamanhos(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

//flutter run -d chrome

//device_preview
