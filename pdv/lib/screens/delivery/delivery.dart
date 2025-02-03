import 'package:flutter/material.dart';

class MydeliveryScreen extends StatefulWidget {
  const MydeliveryScreen({super.key});

  @override
  State<MydeliveryScreen> createState() => _MydeliveryScreenState();
}

class _MydeliveryScreenState extends State<MydeliveryScreen> {
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
          child: Text('Delivery - Bem Vindo!'),
        ),
      ),
    );
  }
}
