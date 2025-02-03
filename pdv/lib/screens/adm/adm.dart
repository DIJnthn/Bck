import 'package:flutter/material.dart';

class MyAdmScreen extends StatefulWidget {
  const MyAdmScreen({super.key});

  @override
  State<MyAdmScreen> createState() => _MyAdmScreenState();
}

class _MyAdmScreenState extends State<MyAdmScreen> {
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
          child: Text('Adm - Bem Vindo!'),
        ),
      ),
    );
  }
}
