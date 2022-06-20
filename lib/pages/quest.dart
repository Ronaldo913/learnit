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
                Text("Q.1 - Costuma-se dizer que as células são formadas por membrana, citoplasma e núcleo. Entretanto, não são todas as células que apresentam um núcleo definido e delimitado por membrana nuclear. Baseando-se nisso, o mais correto seria afirmar que todas as células possuem membrana, citoplasma e material genético. As células que apresentam núcleo definido são chamadas de:", style: TextStyle(fontSize: 25)),
                SizedBox(height: 8),
                Text("a) autotróficas.",textAlign: TextAlign.left, style: TextStyle(fontSize: 18)),
                Text("b) heterotróficas.",textAlign: TextAlign.left, style: TextStyle(fontSize: 18)),
                Text("c) eucarióticas.",textAlign: TextAlign.left, style: TextStyle(fontSize: 18)),
                Text("d) procarióticas.",textAlign: TextAlign.left, style: TextStyle(fontSize: 18)),
                SizedBox(height: 700),
                
                Text("RESPOSTA Q.1", style: TextStyle(fontSize: 25)),
                SizedBox(height: 8),
                Text("Alternativa C",textAlign: TextAlign.left, style: TextStyle(fontSize: 18)),
                Text("As células que possuem núcleo delimitado pela carioteca são chamadas de eucarióticas. Aquelas que possuem material genético disperso no citoplasma recebem o nome de procarióticas.",textAlign: TextAlign.left, style: TextStyle(fontSize: 18)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}