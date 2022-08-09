import 'package:flutter/material.dart';
import 'package:learnit/pages/home_page.dart';
import 'package:learnit/pages/animation.dart';
import 'package:learnit/pages/login_page.dart';

void main() {
  runApp(const MaterialApp(
    home: AnimationPage(page: Loginpage()),
  ));
}
