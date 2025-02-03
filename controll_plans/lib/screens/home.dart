import 'package:controll/screens/class.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  late String description;
  late String observation;
  late String value;

  final _despesas = [
    DespesasPagas(
      descricao: 'Teste',
      data: DateTime.now(),
      valor: 150.00,
      observacao: 'Pagamento teste',
      formaPagamento: 'Pix',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Despesas Mensais',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            )),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const SizedBox(
            child: Card(
              color: Colors.blue,
              elevation: 5,
              child: Text('Teste'),
            ),
          ),
          Column(
              children: _despesas.map((dps) {
            return Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 2)),
                    padding: const EdgeInsets.all(10),
                    child: Text('R\$ ${dps.valor.toStringAsFixed(2)}',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        )),
                  ),
                  Column(
                    children: [
                      Text(dps.descricao,
                          style: const TextStyle(fontWeight: FontWeight.bold)),
                      Text(DateFormat('d MMM y').format(dps.data)),
                      Text(dps.formaPagamento)
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.edit),
                    color: Colors.black,
                  )
                ],
              ),
            );
          }).toList()),
          Card(
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  TextField(
                    onChanged: (teste) => description = teste,
                    decoration: const InputDecoration(labelText: ('Descrição')),
                  ),
                  TextField(
                    onChanged: (teste) => value = teste,
                    decoration: const InputDecoration(labelText: ('Valor (R\$)')),
                  ),
                  TextField(
                    onChanged: (teste) => observation = teste,
                    decoration: const InputDecoration(labelText: ('Observação')),
                  ),
                  const SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      FilledButton(onPressed: (){
                      }, child: const Text('Salvar')),
                    ],
                  )
                  ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
