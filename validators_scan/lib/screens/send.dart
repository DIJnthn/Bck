import 'package:flutter/material.dart';
import '../models/mercadologico.dart';
import '../data/dados.dart';

class SendDados extends StatelessWidget {
  const SendDados({super.key});

  

  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context)?.settings.arguments as Mercadologico;

    final mercadologicoItens = itensSku.where((sku){
      return sku.mercadologico.contains(category.title);
    }).toList();
    
    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
      ),
      body: Center(
        child: ListView.builder(
          itemCount: mercadologicoItens.length,
          itemBuilder: (ctx, index){
          return Text(mercadologicoItens[index].descricao );
        },),
    ));
  }
}