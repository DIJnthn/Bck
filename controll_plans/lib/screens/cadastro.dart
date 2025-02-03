import 'package:controll/screens/login.dart';
import 'package:flutter/material.dart';

class CadastroPage extends StatefulWidget {
  const CadastroPage({super.key});

  @override
  State<CadastroPage> createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(padding: EdgeInsets.all(28.0)),
                const Text('Cadastro de Novo Usuário'),
                const Padding(padding: EdgeInsets.all(28.0)),
                TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Digite seu Nome',
                      border: OutlineInputBorder(),
                      label: Text('Nome de Usuário'),
                    ),
                    validator: (nome) {
                      if (nome == null || nome.isEmpty) {
                        return ('Digite seu nome');
                      }
                      return null;
                    }),
                const Padding(padding: EdgeInsets.all(8.0)),
                TextFormField(
                    keyboardType: TextInputType.phone,
                    decoration: const InputDecoration(
                        hintText: 'Digite seu Telefone',
                        border: OutlineInputBorder(),
                        label: Text('Telefone')),
                    validator: (telefone) {
                      if (telefone == null || telefone.isEmpty) {
                        return ('Digite seu número de telefone');
                      }
                      return null;
                    }),
                const Padding(padding: EdgeInsets.all(8.0)),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                      hintText: 'Digite seu E-mail',
                      border: OutlineInputBorder(),
                      label: Text('E-mail')),
                  validator: (email) {
                    if (email == null || email.isEmpty) {
                      return ('Digite seu E-mail');
                    }
                    return null;
                  },
                ),
                const Padding(padding: EdgeInsets.all(8.0)),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: 'Digite sua Senha',
                    border: OutlineInputBorder(),
                    labelText: 'Senha',
                  ),
                  validator: (senha) {
                    if (senha == null || senha.isEmpty) {
                      return ('Digite sua senha');
                    } else if (senha.length < 6) {
                      return ('Digite uma senha mais forte');
                    }
                    return null;
                  },
                ),
                const Padding(padding: EdgeInsets.all(8.0)),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: 'Digite sua Senha',
                    border: OutlineInputBorder(),
                    labelText: 'Confirme sua Senha',
                  ),
                ),
                const Padding(padding: EdgeInsets.all(8.0)),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Cadastre-se'),
                ),
                const Padding(padding: EdgeInsets.all(18.0)),
                const Text('Já tem cadastro?'),
                const Padding(padding: EdgeInsets.all(5.0)),
                OutlinedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => const LoginPage()));
                    },
                    child: const Text('Entrar')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
