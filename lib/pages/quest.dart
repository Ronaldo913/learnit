import 'package:flutter/material.dart';
import 'package:learnit/pages/home_page.dart';

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
        title: Text('QUESTÕES - CITOLOGIA'),
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
                    return const HomePage();
                  },
                ),
              );
            },
          ),
          // add more IconButton
        ],
      ),

      backgroundColor: Colors.green[100],
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(30.0),
            padding: EdgeInsets.all(10.0),
            alignment: Alignment.topLeft,
            width: 400,
            height: 1200,
            //decoration: BoxDecoration(
              //border: Border.all(),
            //),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Q.1 - Costuma-se dizer que as células são formadas por membrana, citoplasma e núcleo. Entretanto, não são todas as células que apresentam um núcleo definido e delimitado por membrana nuclear. Baseando-se nisso, o mais correto seria afirmar que todas as células possuem membrana, citoplasma e material genético. As células que apresentam núcleo definido são chamadas de:", textAlign: TextAlign.justify, style: TextStyle(fontSize: 25)),
                SizedBox(height: 8),
                Text("a) autotróficas.",textAlign: TextAlign.justify, style: TextStyle(fontSize: 18)),
                Text("b) heterotróficas.",textAlign: TextAlign.justify, style: TextStyle(fontSize: 18)),
                Text("c) eucarióticas.",textAlign: TextAlign.justify, style: TextStyle(fontSize: 18)),
                Text("d) procarióticas.",textAlign: TextAlign.justify, style: TextStyle(fontSize: 18)),
                SizedBox(height: 200),
                
                Text("RESPOSTA Q.1", style: TextStyle(fontSize: 25)),
                SizedBox(height: 8),
                Text("Alternativa C",textAlign: TextAlign.left, style: TextStyle(fontSize: 18, color: Colors.red[900], fontWeight: FontWeight.bold)),
                SizedBox(height:30),
                Text("As células que possuem núcleo delimitado pela carioteca são chamadas de eucarióticas. Aquelas que possuem material genético disperso no citoplasma recebem o nome de procarióticas.",textAlign: TextAlign.justify, style: TextStyle(fontSize: 18)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void goHome() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) {
          return const HomePage();
        },
      ),
    );
  }
}
