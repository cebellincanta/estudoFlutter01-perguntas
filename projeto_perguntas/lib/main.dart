import 'package:flutter/material.dart';
import './questionario.dart';
import './resultado.dart';

main() => runApp(new PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaselecionada = 0;
  var _pontuacaoTotal = 0;

  final _perguntas = const [
    {
      'texto': 'Qual é a sua cor favorita?',
      'respostas': [
        {'texto': 'Azul', 'pontuacao': 10},
        {'texto': 'Preto', 'pontuacao': 20},
        {'texto': 'Verde', 'pontuacao': 100},
        {'texto': 'Amarelo', 'pontuacao': 5},
      ],
    },
    {
      'texto': 'Qual é seu animal favorito?',
      'respostas': [
        {'texto': 'Cachorro', 'pontuacao': 50},
        {'texto': 'Gato', 'pontuacao': 10},
        {'texto': 'Porco', 'pontuacao': 100},
        {'texto': 'Coelho', 'pontuacao': 30},
      ],
    },
    {
      'texto': 'Qual é seu idiota favorito?',
      'respostas': [
        {'texto': 'Bolsonaro', 'pontuacao': 1},
        {'texto': 'Lula', 'pontuacao': 1},
        {'texto': 'Ciro Gomes', 'pontuacao': 30},
        {'texto': 'Amoedo', 'pontuacao': 100},
      ],
    }
  ];

  void _responder(int pontuacao) {
    setState(() {
      _perguntaselecionada++;
      _pontuacaoTotal += pontuacao;
    });
  }

  void _reiniciarQuestionario() {
    setState(() {
      _perguntaselecionada = 0;
      _pontuacaoTotal = 0;
    });
  }

  bool get temPerguntaSelecionada {
    return _perguntaselecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Perguntas"),
          ),
          body: temPerguntaSelecionada
              ? Questionario(
                  perguntas: _perguntas,
                  perguntaSelecionada: _perguntaselecionada,
                  responder: _responder)
              : Resultado(_pontuacaoTotal, _reiniciarQuestionario)),
    );
  }
}

@override
class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
