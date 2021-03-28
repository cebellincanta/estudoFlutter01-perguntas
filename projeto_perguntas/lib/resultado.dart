import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() reiniciarQuestionario;

  Resultado(this.pontuacao, this.reiniciarQuestionario);

  String get fraseResultado {
    if (pontuacao < 200) {
      return 'Parabens';
    } else if (pontuacao < 100) {
      return 'Chances de melhora';
    } else {
      return "vc é um Jedi";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            fraseResultado,
            style: TextStyle(fontSize: 28),
          ),
        ),
        FlatButton(
            onPressed: reiniciarQuestionario,
            child: Text(
              "Reiniciar",
              style: TextStyle(fontSize: 18),
            ),
            textColor: Colors.green)
      ],
    );
  }
}
