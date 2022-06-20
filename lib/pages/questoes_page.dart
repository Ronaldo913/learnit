import 'package:flutter/material.dart';
import 'package:learnit/pages/quest.dart';

import 'home_page.dart';

class QuestoesPage extends StatefulWidget {
  const QuestoesPage({Key? key}) : super(key: key);

  @override
  State<QuestoesPage> createState() => _QuestoesPageState();
}

class _QuestoesPageState extends State<QuestoesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[200],
      appBar: AppBar(
        title: Text('MENU - QUESTÕES'),
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
      body: Padding(padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            buildCardQuestoes(titulo: "Citologia", context: context)
          ],
        ),
      ),
    );
  }
  void goHome() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return const Homepage();
        },
      ),
    );
  }

}
buildCardQuestoes({
  required String titulo,
  required BuildContext context
}) {
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8.0),
    ),
    child: Padding(padding: const EdgeInsets.only(top: 18.0, right: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(titulo, textAlign: TextAlign.center, style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom( primary: Colors.white),
                onPressed:() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return QuestPage();
                      },
                    ),
                  );
                },
                child: Icon(Icons.navigate_next, size: 28.0, color: Colors.black,
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
