import 'package:flutter/material.dart';
//import 'package:learnit/repositories/usuario_repository.dart';
//import 'package:provider/provider.dart';
import 'package:learnit/pages/home_page.dart';
import 'package:learnit/pages/animation.dart';
import 'package:learnit/pages/login_page.dart';

void main() {
  runApp(
    //ChangeNotifierProvider(
     //create: (context) => UsuarioRepository(),
      //child:
       MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AnimationPage(page: PerfilPage()),
      ));
}
