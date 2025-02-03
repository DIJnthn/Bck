import 'dart:async';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(), // Definindo a splash screen como a tela inicial
      debugShowCheckedModeBanner: false,
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // Método que aguarda por um tempo definido antes de navegar para a próxima tela
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3), // Tempo de duração da splash screen (3 segundos neste caso)
      () => Navigator.of(context).pushReplacement( // Navega para a próxima tela
        MaterialPageRoute(
          builder: (BuildContext context) => HomePage(), // Próxima tela após a splash screen
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blue, // Cor de fundo da splash screen
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlutterLogo(size: 100), // Logotipo do Flutter (pode ser substituído pelo seu logotipo)
            SizedBox(height: 20),
            CircularProgressIndicator(), // Indicador de progresso (carregamento)
          ],
        ),
      ),
    );
  }
}

// Página principal após a splash screen
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página Principal'),
      ),
      body: Center(
        child: Text('Bem-vindo à sua aplicação!'),
      ),
    );
  }
}
