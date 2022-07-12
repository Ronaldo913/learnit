import 'package:flutter/material.dart';
import 'package:learnit/pages/assuntos_page.dart';
import 'package:learnit/pages/questoes_page.dart';
import 'package:learnit/pages/pacote_page.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: const Text('Learn It + Bio'),
        backgroundColor: const Color(0xFF0B4619),
        toolbarHeight: 64,
      ),
      body: Column(
        children: [
          Image.network('https://s1.static.brasilescola.uol.com.br/be/conteudo/images/biologia.jpg'),
          SizedBox(height: 24),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(padding: EdgeInsets.all(16),
                  child: ElevatedButton(onPressed: onPressedButton,
                    child: const Padding(padding: EdgeInsets.symmetric(vertical: 16),
                      child: const Text(
                        'CONTEÚDOS',
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
                ),
                Padding(padding: EdgeInsets.all(16),
                  child: ElevatedButton(onPressed: onPressedButton2,
                    child: const Padding(padding: EdgeInsets.symmetric(vertical: 16),
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
                ),

                const SizedBox(height: 160),

                Padding(padding: EdgeInsets.all(20),
                  child: ElevatedButton(onPressed: onPressedButton3,
                    child: const Padding(padding: EdgeInsets.symmetric(vertical: 24),
                      child: const Text(
                        'PREMIUM',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.deepPurple[900],
                    ),
                  ),
                ),
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
          return const AssuntosPage();
        },
      ),
    );
  }

  void onPressedButton2(){
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context){
          return const QuestoesPage();
        },
      ),
    );
  }

  void onPressedButton3(){
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context){
          return const PacotePage();
        },
      ),
    );
  }
}

