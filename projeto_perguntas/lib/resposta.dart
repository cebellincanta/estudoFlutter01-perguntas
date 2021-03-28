import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() onSelecao;
  Resposta(this.texto, this.onSelecao);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.blue,
            onPrimary: Colors.white,
            onSurface: Colors.blue,
          ),
          onPressed: onSelecao,
          child: Text(texto)),
    );
  }
}
