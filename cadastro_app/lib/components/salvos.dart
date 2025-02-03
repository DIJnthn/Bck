import 'package:cadastro_app/components/aluno.dart';
import 'package:cadastro_app/model/data.dart';
import 'package:cadastro_app/main.dart';
import 'package:flutter/material.dart';

class Savepage extends StatelessWidget {
  const Savepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alunos Cadastrados'),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.print))],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // ignore: sized_box_for_whitespace
              ///Container(
              ///  height: 470,
              ///  child: ListView.builder(
              ///    itemCount: alunos.length,
              ///    itemBuilder: (ctx, index){
              ///      final aln = alunos[index];
              ///      return const Card(
              ///        child: Column(),
              ///      );
              ///    },
              ///  ),
              ///),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        OutlinedButton(
                            onPressed: () {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (context) => const Alunoform()));
                            },
                            child: const Text('Cadastrar novo aluno')),
                        const SizedBox(
                          height: 25,
                        ),
                        OutlinedButton(
                            onPressed: () {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (context) => const MyApp()));
                            },
                            child: const Text('Inicio')),
                      ],
                    ),
                    const SizedBox(height: 25),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
