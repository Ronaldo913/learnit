import 'package:flutter/material.dart';
import 'package:learnit/pages/assuntos_page.dart';
import 'package:learnit/pages/questoes_page.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
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
            height: 250.0,
            color: Colors.amberAccent,
          ),
          Container(
            height: 400.0,
            color: Color(0xFFA5D6A7),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(padding: EdgeInsets.all(16),
                  child: ElevatedButton(onPressed: onPressedButton,
                    child: const Padding(padding: EdgeInsets.symmetric(vertical: 24),
                      child: const Text(
                        'QUESTÕES',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF125C13),
                    ),
                  ),
                )

              ],
            ),
          ),
        ],
      ),
    );
  }

  void onPressedButton(){
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context){
          return const QuestoesPage();
        },
      ),
    );
  }
}