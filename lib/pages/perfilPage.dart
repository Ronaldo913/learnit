import 'package:flutter/material.dart';
import 'package:learnit/pages/pacote_page.dart';

class PerfilPage extends StatefulWidget {
  const PerfilPage({Key? key}) : super(key: key);

  @override
  State<PerfilPage> createState() => _PerfilPageState();
}

class _PerfilPageState extends State<PerfilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Perfil',
          ), // style: TextStyle(color: Colors.green[900])),
          backgroundColor: Colors.green[900],
          actions: [
            IconButton(
              icon: Icon(Icons.home), //, color: Colors.green[900]),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const PerfilPage();
                    },
                  ),
                );
              },
            ),
            // add more IconButton
          ],
        ),
        body: SingleChildScrollView(child: buildPerfil(email: "e-mail do aluno:", nome: "nome de usuário:", email_escrito: "E-maildoaluno@dominio", nome_escrito: "eeuestudante", imagem: "https://curriculo.jheniffermaia.repl.co/grafico.png")));
  }

  void onPressedButton() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return const PacotePage(); //colocar página do Ronaldo (Premium)
        },
      ),
    );
  }//fim do onPressedButton

  buildPerfil({required String email, required String nome, required String email_escrito, required String nome_escrito, required String imagem}) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 60,
          ),
          const Icon(Icons.account_circle, color: Color(0xFF1b5e20), size: 120.0),
          SizedBox(height: 30),
          Row(
            children: [
              Expanded(
                child: Text(email, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ),
              Text(nome, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ],
          ),
          Row(
            children: [
              Expanded(
                //widget ocupar a area toda
                child: Text(email_escrito),
              ),
              Text(nome_escrito),
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              "PROGRESSO",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Image.network(imagem),
          ElevatedButton(
            onPressed: onPressedButton,
            child: const Text(
              'PREMIUM',
              style: TextStyle(
                fontSize: 22,
                color: Colors.white,
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.green[900],
              elevation: 15,
              padding: const EdgeInsets.all(15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
              ),
            ),
          )
        ],
      ),
    );
  }
}
