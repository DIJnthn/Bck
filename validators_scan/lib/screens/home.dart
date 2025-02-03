import 'package:flutter/material.dart';
import 'package:validators/components/mercadologico_itens.dart';
import 'package:validators/data/dados.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Validades'),
          elevation: 1,
          centerTitle: true,
          backgroundColor: Theme.of(context).primaryColor,
        ),
        body: GridView(
          padding: const EdgeInsets.all(25),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 1.75,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
          ),
          children: mercadologico.map((cat) {
            return MercadologicoItem(cat);
          }).toList(),
        ),
      ),
    );
  }
}
