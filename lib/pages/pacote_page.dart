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
    titulo: 'Pacote Cancún 2022/2023',
    transporte: 'Aéreo - Hotel All inclusive',
    cidade: 'CANCÚN, MEX',
    validade: 'De 10 ago 2021 até 30 set 2022',
    desconto: 45,
    numDiarias: 5,
    numPessoas: 2,
    numParcelas: 6,
    precoAntigo: 6819,
    precoAtual: 2819,
  );
  PacoteEstudo pacote2 = PacoteEstudo(
    imagem: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ32k_zUkptSCbg2-SkTcWDAK4lqirR0wrX2wjkneTz7dKyRywIlwFbv_ahZxXogvnOsWc&usqp=CAU',
    titulo: 'Pacote Maragogi 2023',
    transporte: 'Hotel All inclusive',
    cidade: 'MARAGOGI, BRA',
    validade: 'De 10 jan 2022 até 31 dez 2023',
    desconto: 45,
    numDiarias: 7,
    numPessoas: 3,
    numParcelas: 12,
    precoAntigo: 4819,
    precoAtual: 819,
  );

  PacoteEstudo pacote3 = PacoteEstudo(
    imagem: 'https://51435.cdn.simplo7.net/static/51435/sku/pacotes-especiais-pacote-premium--p-1610222593192.png',
    titulo: 'Pacote Maragogi 2023',
    transporte: 'Hotel All inclusive',
    cidade: 'MARAGOGI, BRA',
    validade: 'De 10 jan 2022 até 31 dez 2023',
    desconto: 45,
    numDiarias: 7,
    numPessoas: 3,
    numParcelas: 12,
    precoAntigo: 4819,
    precoAtual: 819,
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
                color: Color(0xFF0b4619),
                borderRadius: BorderRadius.circular(16),
              ),
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'Acrescente ao seu aprendizado esses regalias',
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,

                          ),
                        ),
                        const Text(
                          'Corre e aproveita a promoção',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 16),
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