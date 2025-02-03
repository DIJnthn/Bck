import 'package:controll/screens/cadastro.dart';
import 'package:controll/screens/home.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

final _formKeyL = GlobalKey<FormState>();
final _emailController = TextEditingController();
final _senhaController = TextEditingController();

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _formKeyL,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.white,
                  child: Image.asset('assets/images/logo.png'),
                ),
                const Padding(padding: EdgeInsets.all(16)),
                TextFormField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    hintText: 'Digite seu E-mail',
                    border: OutlineInputBorder(),
                    labelText: 'E-mail',
                  ),
                  validator: (email) {
                    if (email == null || email.isEmpty) {
                      return ('Digite seu E-mail');
                    }
                    return null;
                  },
                ),
                const Padding(padding: EdgeInsets.all(12.0)),
                TextFormField(
                  controller: _senhaController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: 'Digite sua Senha',
                    border: OutlineInputBorder(),
                    labelText: 'Senha',
                  ),
                  validator: (senha) {
                    if (senha == null || senha.isEmpty) {
                      return ('Digite sua senha');
                    }
                    return null;
                  },
                ),
                const Padding(padding: EdgeInsets.all(8.0)),
                FilledButton(
                    onPressed: () {
                      if (_formKeyL.currentState!.validate()) {
                        Navigator.of(context).push(MaterialPageRoute(
                     builder: (context) => const MyHomePage()));
                      }
                    },
                    child: const Text('Entrar')),
                const Padding(padding: EdgeInsets.all(8.0)),
                FilledButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                     builder: (context) => const CadastroPage()));
                  },
                  child: const Text('Cadastre-se')
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
