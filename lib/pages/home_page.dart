import 'package:flutter/material.dart';
import 'package:learnit/pages/assuntos_page.dart';
import 'package:learnit/pages/questoes_page.dart';
import 'package:learnit/pages/pacote_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                child: Text("Menu do Learnit",
                  style: TextStyle(
                    fontSize: 24
                  ),
                ),
              decoration: BoxDecoration(
                color: Colors.cyan
              ),
            ),
            ListTile(
              leading: Icon(Icons.account_circle,
              ),
              title: Text("Perfil",
                style: TextStyle(
                  fontSize: 24
                ),
              ),
              subtitle: Text("Perfil do usuário...",
                style: TextStyle(
                    fontSize: 18,
                ),
              ),
                trailing: IconButton(
                  icon: Icon(Icons.account_circle),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const perfilPage();
                        },
                      ),
                    );
                  },
                ),
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('Learn It + Bio'),
        backgroundColor: const Color(0xFF0B4619),
        toolbarHeight: 64,
      ),
      body: Column(
        children: [
          Image.network('https://ronaldo913.github.io/ImagensPMovel/images/logo.png'),
          SizedBox(height: 24),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(padding: EdgeInsets.all(16),
                  child: ElevatedButton(onPressed: onPressedButton,
                    child: const Padding(padding: EdgeInsets.symmetric(vertical: 20),
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
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.all(16),
                  child: ElevatedButton(onPressed: onPressedButton2,
                    child: const Padding(padding: EdgeInsets.symmetric(vertical: 20),
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
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 24),
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
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35.0)
                      )
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
