import 'package:flutter/material.dart';
import 'package:learnit/domain/pacote_estudo.dart';
import 'package:learnit/pages/pacotes_detalhes.dart';
import 'package:learnit/widget/pacote_estudo_card.dart';

class PacotePage extends StatefulWidget {
  const PacotePage({Key? key}) : super(key: key);

  @override
  _PacotePageState createState() => _PacotePageState();
}

class _PacotePageState extends State<PacotePage> {
  PacoteEstudo pacote1 = PacoteEstudo(
    imagem:
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRV_XD9XZ773BGiC9OsuGXVfoZjRUT-BxREnvI7BRpyLNxr6VAUPSr-TfOrY2gh89JI5xI&usqp=CAU',
    titulo: 'Pacote Foco',
    desconto: 10,
    numParcelas: 6,
    precoAntigo: 19.90,
    precoAtual: 9.90,
    redacao: 1,
    aula: 100,
    exercicio: 300,
    horas: 10,
    duvida: 0,
  );
  PacoteEstudo pacote2 = PacoteEstudo(
    imagem: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ32k_zUkptSCbg2-SkTcWDAK4lqirR0wrX2wjkneTz7dKyRywIlwFbv_ahZxXogvnOsWc&usqp=CAU',
    titulo: 'Pacote Médio',
    desconto: 10,
    numParcelas: 8,
    precoAntigo: 35.00,
    precoAtual: 20.00,
    redacao: 3,
    aula: 150,
    exercicio: 500,
    horas: 15,
    duvida: 1,
  );

  PacoteEstudo pacote3 = PacoteEstudo(
    imagem: 'https://51435.cdn.simplo7.net/static/51435/sku/pacotes-especiais-pacote-premium--p-1610222593192.png',
    titulo: 'Pacote LearnMed',
    desconto: 10,
    numParcelas: 10,
    precoAntigo: 50.00,
    precoAtual: 30.00,
    redacao: 5,
    aula: 200,
    exercicio: 700,
    horas: 20,
    duvida: 3,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: const Color(0xFF0b4619),
        title: const Text(
          'Premium',
          style: TextStyle(fontSize: 24),
        ),
      ),

      backgroundColor: Colors.grey[100],

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFF0b4619),
                borderRadius: BorderRadius.circular(16),
              ),
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Acrescente ao seu \naprendizado essas regalias',
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 24),

                ],
              ),
            ),
            const SizedBox(height: 24),
            CardPacoteEstudo(pacoteEstudo: pacote1),
            const SizedBox(height: 20),
            CardPacoteEstudo(pacoteEstudo: pacote2),
            const SizedBox(height: 20),
            CardPacoteEstudo(pacoteEstudo: pacote3),
          ],
        ),
      ),
    );
  }

}
