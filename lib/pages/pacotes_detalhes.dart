import 'package:learnit/domain/pacote_estudo.dart';
import 'package:flutter/material.dart';

class PacoteDetalhes extends StatefulWidget {
  final PacoteEstudo pacoteEstudo;

  const PacoteDetalhes({
    Key? key,
    required this.pacoteEstudo,
  }) : super(key: key);

  @override
  _PacoteDetalhesState createState() => _PacoteDetalhesState();
}

class _PacoteDetalhesState extends State<PacoteDetalhes> {
  PacoteEstudo get pacote => widget.pacoteEstudo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.network(pacote.imagem),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                const SizedBox(height: 8),

                Text(
                  pacote.titulo,
                  style: const TextStyle(fontSize: 20, color: Color(0xFF0b4619)),
                ),

                const SizedBox(height: 8),

                const SizedBox(height: 8),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      '${pacote.redacao} redação',
                      style: const TextStyle(fontSize: 16, color: Colors.green),
                    ),
                    Text(
                      'Mais de ${pacote.aula} aulas',
                      style: const TextStyle(fontSize: 16, color: Colors.green),
                    ),
                    Text(
                      'Mais de ${pacote.exercicio} exercícios',
                      style: const TextStyle(fontSize: 16, color: Colors.green),
                    ),
                    Text(
                      '${pacote.horas} horas semanais de aula ao vivo',
                      style: const TextStyle(fontSize: 16, color: Colors.green),
                    ),
                    Text(
                      '${pacote.duvida} tira dúvidas',
                      style: const TextStyle(fontSize: 16, color: Colors.green),
                    ),
                    Text(
                      'Simulados semanais\nApostilasz\nCronograma de estudo\nResumos\n',
                      style: const TextStyle(fontSize: 16, color: Colors.green),
                    ),
                  ],
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
