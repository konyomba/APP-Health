import 'package:flutter/material.dart';
import 'package:ihealth/pages/login.dart';
// ignore: unused_imports

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
