import 'package:learnit/domain/pacote_estudo.dart';
import 'package:learnit/pages/pacotes_detalhes.dart';
import 'package:flutter/material.dart';

class CardPacoteEstudo extends StatefulWidget {
  final PacoteEstudo pacoteEstudo;

  const CardPacoteEstudo({
    Key? key,
    required this.pacoteEstudo,
  }) : super(key: key);

  @override
  _CardPacoteEstudoState createState() => _CardPacoteEstudoState();
}

class _CardPacoteEstudoState extends State<CardPacoteEstudo> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return PacoteDetalhes(
                pacoteEstudo: widget.pacoteEstudo,
              );
            },
          ),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            buildImage(),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.pacoteEstudo.titulo,
                    style: const TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF0b4619),
                    ),
                  ),

                  SizedBox(height: 8),

                  Text('de R\$ ${widget.pacoteEstudo.precoAntigo}'),
                  Row(
                    children: [
                      Text('por '),
                      Text(
                        'R\$ ${widget.pacoteEstudo.precoAtual}',
                        style: const TextStyle(
                          color: Colors.orange,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 8),
                  Text(
                    '*Não há cancelamento',
                    style: TextStyle(
                      color: Colors.green[700],
                    ),
                  ),
                ],
              ),

            )
          ],
        ),
      ),
    );
  }

  buildImage() {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(8),
          ),
          child: Image.network(widget.pacoteEstudo.imagem),
        ),
        Container(
          child: const Text(
            '-10%',
            style: TextStyle(
                fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          decoration: const BoxDecoration(
            color: Color(0xFFfd6c00),
            borderRadius: BorderRadius.all(
              Radius.circular(16),
            ),
          ),
          margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 18),
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        ),
      ],
    );
  }
}
