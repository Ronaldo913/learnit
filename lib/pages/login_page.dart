import 'package:flutter/material.dart';
import  'package:learnit/pages/animation.dart';
import 'package:learnit/pages/pacote_page.dart';
import 'package:learnit/pages/home_page.dart';
import 'package:learnit/pages/registration_page.dart';

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 40,
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
                                          return const HomePage();
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
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(18.0),
                                          side: BorderSide(color: Colors.green)),
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
              height: 40,
            ),
            Container(
              height:60,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end:Alignment.bottomRight,
                    stops:[0.3,1],
                    colors:[
                      Color(0xFFF58524),
                      Color(0xFFF92B7F),
                    ],
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(80),
                  )
              ),
              child:SizedBox.expand(
                child:FlatButton(
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Login",
                        style:TextStyle(
                          fontWeight: FontWeight.bold,
                          color:Colors.white,
                          fontSize:20,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Container(
                        child:SizedBox(
                          child:Image.asset("assets/bone.png"),
                          height: 28,
                          width:28,
                        ),
                      ),
                    ],
                  ),
                  onPressed: () => {},
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height:60,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end:Alignment.bottomRight,
                    stops:[0.3,1],
                    colors:[
                      Color(0xFFF58524),
                      Color(0xFFF92B7F),
                    ],
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(80),
                  )
              ),
              child:SizedBox.expand(
                child:FlatButton(
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Login",
                        style:TextStyle(
                          fontWeight: FontWeight.bold,
                          color:Colors.white,
                          fontSize:20,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Container(
                        child:SizedBox(
                          child:Image.asset("assets/bone.png"),
                          height: 28,
                          width:28,
                        ),
                      ),
                    ],
                  ),
                  onPressed: () => {},
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 60,
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                color:Color(0xFF3C5A99),
                borderRadius: BorderRadius.all(
                  Radius.circular(70),
                ),
              ),
              child: SizedBox.expand(
                child:FlatButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Login com Facebook",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color:Colors.white,
                          fontSize:16,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Container(
                        child: SizedBox(
                          child: Image.network("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAFwAAABcCAMAAADUMSJqAAAAYFBMVEU6VZ////8qS5yosdA4U54rS5r8/P0uTZtDXKOfqcs0UJ1wgbX29/q3v9gbQZfj5e9ccKxpe7J3h7jCyN7r7fQjRZmMmMJTaah+jLvS1uZLYqWXosfKz+EGOJMSPJWwudSSdZ67AAABTElEQVRoge3XYXOCMAyAYcAAFVhRtDimm///X24fNlsK9UIadmyX92vvntvN2MYkkSRJ2loAULkBH11lpToca6cDl15m3emcjjtlLHRlel/+6oUFzy7tlGbCzesczYObft7mwPMuYDPgoEI2A66H9fCqDtrxuAn/4dE4vIXtaLy8roib24Qs2u/Ou0hc+1dKW7/rn2I/zw/fNlWk6JR5+IXRBg8fNJ89we88z8M8Hjsfz/FccMHROMMowqMJDk4kWtkSD3fPFAVXTWEb42nhHnXLbzFQTYqLsOWi8WIxvQBvzIp4S7jc0Thl90fjlK8rGu8J7ykap/zeQuPLaTxeECYRjbeUGxKL32i4f1vNR9pxQe1t3gY9XO3RkbTZQfko12N8p+1Z9Nb4jx7orb/+Yfzv/lsE/31cRlFwPC7TIvhGcBlFwTeCyyguxj8B/JEUhCero8IAAAAASUVORK5CYII="),
                          height: 28,
                          width: 28,
                        ),
                      ),
                    ],
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            SizedBox(
              height:10,
            ),
            Container(
                height: 40,
                child:FlatButton(
                  child: Text(
                    "Cadastre-se",
                    textAlign: TextAlign.center,
                  ),

                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const RegistrationPage();
                        },
                      ),
                    );
                  },

                )
            ),
          ],
        ),
      ),
    );
  }

  void tCadastro() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return const RegistrationPage();
        },
      ),
    );
  }

  void tRecuperar() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return const HomePage();
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
          return const HomePage();
        },
      ),
    );
  }
}
