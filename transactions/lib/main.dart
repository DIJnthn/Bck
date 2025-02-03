///import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
///import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:transactions/components/transaction_form.dart';
import 'package:transactions/components/transaction_list.dart';
import 'dart:math';
import 'package:transactions/models/transaction.dart';

void main() => runApp(const ExpensesApp());

class ExpensesApp extends StatelessWidget {
  const ExpensesApp({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData tema = ThemeData();
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyHomePage(),
        theme: tema.copyWith(
          colorScheme: tema.colorScheme.copyWith(
            primary: Colors.red,
            secondary: Colors.amber,
          ),
        ));
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _transactions = [
    Transaction(
        id: "t1",
        title: "Novo Tênis de Corrida",
        value: 310.76,
        date: DateTime.now()),
    Transaction(
        id: "t2", title: "Conta de Luz", value: 211.30, date: DateTime.now()),
  ];

  _addTransaction(String title, double value) {
    final newTransaction = Transaction(
      id: Random().nextDouble().toString(),
      title: title,
      value: value,
      date: DateTime.now(),
    );

    setState(() {
      _transactions.add(newTransaction);
    });

    Navigator.of(context).pop();
  }

  _openTransactionFormModal(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) {
          return TransactionForm(_addTransaction);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        actions: [
          IconButton(
            onPressed: () => _openTransactionFormModal(context),
            icon: const Icon(Icons.add),
            color: Colors.white,
          )
        ],
        title: const Text('Desepesas Pessoais',
            style: TextStyle(color: Colors.white)),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: double.infinity,
              child: const Card(
                color: Colors.blue,
                elevation: 5,
                child: Text('Gráfico', style: TextStyle(color: Colors.white)),
              ),
            ),
            TransactionList(_transactions),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _openTransactionFormModal(context),
        backgroundColor: Theme.of(context).colorScheme.primary,
        child: const Icon(Icons.add, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

      ///bottomNavigationBar: CurvedNavigationBar(
      ///  index: 0,
      ///  items: const [
      ///    CurvedNavigationBarItem(
      ///      child: Icon(Icons.home_outlined),
      ///      label: 'Home',
      ///    ),
      ///    CurvedNavigationBarItem(
      ///      child: Icon(Icons.search),
      ///      label: 'Search',
      ///    ),
      ///    CurvedNavigationBarItem(
      ///      child: Icon(Icons.chat_bubble_outline),
      ///      label: 'Chat',
      ///    ),
      ///    CurvedNavigationBarItem(
      ///      child: Icon(Icons.newspaper),
      ///      label: 'Feed',
      ///    ),
      ///    CurvedNavigationBarItem(
      ///      child: Icon(Icons.perm_identity),
      ///      label: 'Personal',
      ///    ),
      ///  ],
      ///  color: Colors.purple.shade300,
      ///  buttonBackgroundColor: Colors.blue,
      ///  backgroundColor: Colors.transparent,
      ///  animationCurve: Curves.easeInOut,
      ///  animationDuration: const Duration(milliseconds: 600),
      ///),
    );
  }
}
