import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Restaurante App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _fomKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final _emailController = TextEditingController();
  final _senhacontroller = TextEditingController();

  bool _mostrarSenha = true;

  void _alternar() {
    setState(() {
      _mostrarSenha = !_mostrarSenha;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Restaurante App'),
      ),
      body: Center(
          child: Form(
        child: ListView(
          padding: const EdgeInsets.only(
            top: 30,
            left: 20,
            right: 20,
          ),
          children: <Widget>[
            TextFormField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(labelText: 'Email'),
              textAlign: TextAlign.left,
            ),
            const SizedBox(height: 17),
            TextFormField(
              controller: _senhacontroller,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: 'Senha',
                suffixIcon: _mostrarSenha == true
                    ? IconButton(
                        icon: Icon(Icons.visibility), onPressed: _alternar)
                    : IconButton(
                        icon: Icon(Icons.visibility_off), onPressed: _alternar),
              ),
              obscureText: _mostrarSenha,
              textAlign: TextAlign.left,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                child: const Text(
                  "Esqueceu a senha?",
                  style: TextStyle(
                      color: Color(0xFF36B3C0),
                      fontFamily: 'GothamRoundedMedium'),
                  textAlign: TextAlign.right,
                ),
                onPressed: () {},
              ),
            ),
            SizedBox(
              height: 49,
              child: (
                  onPressed: () {},
                  child: const Text(
                    "Entrar",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'GothamRoundedBold',
                    ),
                    textAlign: TextAlign.center,
                  )),
            )
          ],
        ),
      )),
    );
  }
}
