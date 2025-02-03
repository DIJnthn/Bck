import 'package:flutter/material.dart';

class MyPdvScreen extends StatefulWidget {
  const MyPdvScreen({super.key});

  @override
  State<MyPdvScreen> createState() => _MyPdvScreenState();
}

class _MyPdvScreenState extends State<MyPdvScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("D.I Solutions"),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pushNamed('/');
            },
          ),
        ),
        body: const Center(
          child: Text('PDV - Bem Vindo!'),
        ),
      ),
    );
  }
}
