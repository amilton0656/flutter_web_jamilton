import 'package:flutter/material.dart';
import 'package:web_jamilton/responsividade_media_query.dart';
import 'package:web_jamilton/responsividade_row_col.dart';
import 'package:web_jamilton/responsividade_wrap.dart';

void main() {
  runApp(
    const MaterialApp(
      // home: ResponsividadeMediaQuery(),
      // home: ResponsividadeRowCol(),
      home: ResponsividadeWrap(),
      debugShowCheckedModeBanner: false,
    ),
  );
}
