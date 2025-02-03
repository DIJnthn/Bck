import 'package:basevalidators/screens/scan.dart';
import 'package:flutter/material.dart';
import '../models/category.dart';
import '../data/dummy_data.dart';

class CategoriesMealsScreen extends StatelessWidget {
  const CategoriesMealsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context)?.settings.arguments as Category;

    final mercadologicoItens = itensSku.where((sku) {
      return sku.mercadologico.contains(category.title);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title:
            Text(category.title, style: const TextStyle(color: Colors.white)),
        backgroundColor: const Color.fromRGBO(0, 77, 36, 1),
        centerTitle: true,
      ),
      body: Center(
        child: ListView.builder(
          itemCount: mercadologicoItens.length,
          itemBuilder: (ctx, index) {
            return Text(mercadologicoItens[index].descricao);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 5,
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const MyScannerPage()));
        },
        backgroundColor: const Color.fromRGBO(0, 77, 36, 1),
        child: const Icon(Icons.add),
      ),
    );
  }
}
