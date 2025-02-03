import 'package:flutter/material.dart';
import 'package:validators/models/mercadologico.dart';


class MercadologicoItem  extends StatelessWidget {
  final Mercadologico mercadologico;

  const MercadologicoItem (this.mercadologico, {super.key});

  void _selectMercadologico(BuildContext context) {
    Navigator.of(context).pushNamed('/mercadologico_itens', arguments: mercadologico);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectMercadologico(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              colors: [
                mercadologico.color.withOpacity(0.5),
                mercadologico.color,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            )),
        child: Text(
          mercadologico.title,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }
}
