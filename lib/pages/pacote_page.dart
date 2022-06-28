import 'package:flutter/material.dart';
import 'package:learnit/domain/pacote_estudo.dart';
import 'package:learnit/pages/pacotes_detalhes.dart';
import 'package:learnit/widget/pacote_estudo_card.dart';
import 'package:learnit/pages/home_page.dart';

class PacotePage extends StatefulWidget {
  const PacotePage({Key? key}) : super(key: key);

  @override
  _PacotePageState createState() => _PacotePageState();
}

class _PacotePageState extends State<PacotePage> {
  PacoteEstudo pacote1 = PacoteEstudo(
    imagem:
    'https://ronaldo913.github.io/imagensmovel/images/foco.png',
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
    imagem: 'https://ronaldo913.github.io/imagensmovel/images/avan%C3%A7ado.png',
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
    imagem: 'https://ronaldo913.github.io/imagensmovel/images/learnmed.png',
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
        title: Text('PREMIUM'),
        backgroundColor: Color(0xFF0B4619),
        toolbarHeight: 64,
        actions: [
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const Homepage();
                  },
                ),
              );
            },
          ),
          // add more IconButton
        ],
      ),

      backgroundColor: Colors.grey[100],

      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: [
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
