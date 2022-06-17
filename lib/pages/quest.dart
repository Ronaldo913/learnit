import 'package:flutter/material.dart';

class QuestPage extends StatefulWidget {
  const QuestPage({Key? key}) : super(key: key);

  @override
  State<QuestPage> createState() => _QuestPageState();
}

class _QuestPageState extends State<QuestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learn It + Bio'),
        backgroundColor: const Color(0xFF0B4619),
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(30.0),
            padding: EdgeInsets.all(10.0),
            alignment: Alignment.topLeft,
            width: 400,
            height: 500,
            decoration: BoxDecoration(
              border: Border.all(),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Questão 1 - ENUNCIADO", style: TextStyle(fontSize: 25)),
                SizedBox(height: 8),
                Text("Alternativa A", textAlign: TextAlign.start),
              ],
            ),
          ),
        ],
      ),
    );
  }
}