import 'package:flutter/material.dart';
import 'package:learnit/pages/login_page.dart';

class AnimationPage extends StatefulWidget {
  const AnimationPage({Key? key}) : super(key: key);

  @override
  State<AnimationPage> createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage> {
  @override
  void initState() {
    super.initState();
    animacao();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            color: Colors.white,
            child: Center(
              child: Container(
                height: 650,
                width: 650,
                child: Image.network('https://ronaldo913.github.io/ImagensPMovel/images/logo.png'),
              ),
            )),
      ),
    );
  }

  void animacao() async {
    await Future.delayed(const Duration(seconds: 4));
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) {
          return const Loginpage();
        },
      ),
    );
  }
}
