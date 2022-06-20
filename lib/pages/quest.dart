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
            height: 1200,
            decoration: BoxDecoration(
              border: Border.all(),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Q.1 - ENUNCIADO", style: TextStyle(fontSize: 25)),
                SizedBox(height: 8),
                Text("Alternativa A",textAlign: TextAlign.left, style: TextStyle(fontSize: 18)),
                Text("Alternativa B",textAlign: TextAlign.left, style: TextStyle(fontSize: 18)),
                Text("Alternativa C",textAlign: TextAlign.left, style: TextStyle(fontSize: 18)),
                Text("Alternativa D",textAlign: TextAlign.left, style: TextStyle(fontSize: 18)),
                SizedBox(height: 700),
                
                Text("RESPOSTA Q.1", style: TextStyle(fontSize: 25)),
                SizedBox(height: 8),
                Text("ALTERNATIVA",textAlign: TextAlign.left, style: TextStyle(fontSize: 18)),
                Text("EXPLICAÇÃO",textAlign: TextAlign.left, style: TextStyle(fontSize: 18)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}