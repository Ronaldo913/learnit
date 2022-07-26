import 'package:flutter/material.dart';
import  'package:learnit/pages/animation.dart';
import 'package:learnit/pages/pacote_page.dart';
import 'package:learnit/pages/home_page.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
                children: [
          SizedBox(
            height: 25,
          ),
          Container(
            height: 210,
            width: 190,
            child: Image.network('https://ronaldo913.github.io/ImagensPMovel/images/png_20220714_132922_0000.png'),
          ),
          SizedBox(
            height: 60,
          ),
          Container(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          keyboardType: TextInputType.text,
                          controller: _emailController,
                          decoration: const InputDecoration(
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontFamily: "WorkSansLight",
                              fontSize: 16,
                            ),
                            hintText: "Username",
                            prefixIcon: const Icon(
                              Icons.email,
                              color: Colors.grey,
                            ),
                            border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(90.0)), borderSide: BorderSide(color: Colors.grey, width: 0.5)),
                          ),
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Campo vazio!';
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          keyboardType: TextInputType.text,
                          controller: _passController,
                          decoration: const InputDecoration(
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontFamily: "WorkSansLight",
                              fontSize: 16,
                            ),
                            hintText: "Password",
                            prefixIcon: const Icon(
                              Icons.key,
                              color: Colors.grey,
                            ),
                            border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(90.0)), borderSide: BorderSide(color: Colors.grey, width: 0.5)),
                          ),
                          validator: (String? value) {
                            if (value == null || value.isEmpty || value.length < 8) {
                              return 'A senha deve ter pelo menos 8 caracters';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 14.0, left: 8.0),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 05.0),
                                child: const Icon(Icons.lock_open_sharp, color: Colors.green),
                              ),
                              Padding(
                                padding: EdgeInsets.all(0),
                                child: new InkWell(
                                  child: Text('Recuperar senha', style: TextStyle(fontSize: 14, color: Colors.green)),
                                  onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return const Homepage();
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 40.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(0),
                                child: ElevatedButton(
                                  onPressed: () {
                                    if (_formKey.currentState!.validate()) {
                                      animacao();
                                    }
                                  },
                                  child: const Padding(
                                    padding: EdgeInsets.all(16),
                                    child: const Text(
                                      '   Entrar   ',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.green,
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0), side: BorderSide(color: Colors.green)),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(0),
                                child: ElevatedButton(
                                  onPressed: tCadastro,
                                  child: const Padding(
                                    padding: EdgeInsets.all(16),
                                    child: const Text(
                                      'Cadastrar-se',
                                      style: TextStyle(
                                        color: Colors.green,
                                      ),
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.white,
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0), side: BorderSide(color: Colors.green)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 0,
          ),
          Container(
            child: Row(
              children: [
                Padding(
                    padding: EdgeInsets.all(0),
                    child: Column(

                    ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }

  void tCadastro() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return const PacotePage();
        },
      ),
    );
  }

  void tRecuperar() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return const Homepage();
        },
      ),
    );
  }

  void animacao() async {
    await Future.delayed(const Duration(seconds: 4));
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) {
          return const Homepage();
        },
      ),
    );
  }
}
