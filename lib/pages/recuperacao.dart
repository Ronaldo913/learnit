import 'package:flutter/material.dart';
import 'package:learnit/pages/home_page.dart';
import 'package:learnit/pages/login_page.dart';
import 'package:learnit/pages/quest.dart';

class Recuperacao extends StatefulWidget {
  const Recuperacao({Key? key}) : super(key: key);

  @override
  State<Recuperacao> createState() => _RecuperacaoState();
}

class _RecuperacaoState extends State<Recuperacao> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.network(
                    "https://ronaldo913.github.io/ImagensPMovel/images/logo.png"),
                const SizedBox(height: 8),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Recupere sua senha",
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontSize: 20)),
                    const SizedBox(height: 4),
                  ],
                ),
                Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Text(
                      "Por favor, informe o e-mail relacionado à conta cadastrada. Enviaremos um e-mail com as instruções a serem seguidas para efetuar a redefinição da senha.",
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 14))
                ]),
                const SizedBox(height: 4),
                TextFormField(
                  controller: _emailController,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Campo vazio!';
                    } else if (!value.contains("@")) {
                      return 'Um e-mail válido deve possuir um "@"!';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(90.0))),
                    labelText: 'Seu e-mail',
                    prefixIcon: const Icon(
                      Icons.email,
                      color: Colors.grey,
                    ),
                  ),
                ),
                const SizedBox(height: 6),
                Padding(
                  padding: EdgeInsets.all(0),
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Loginpage();
                            },
                          ),
                        );
                      }
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(12),
                      child: const Text(
                        'Confirmar',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                        side: BorderSide(color: Colors.greenAccent),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
