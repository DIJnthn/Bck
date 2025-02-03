import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pdv/screens/adm/adm.dart';
import 'package:pdv/screens/delivery/delivery.dart';
import 'package:pdv/screens/home.dart';
import 'package:pdv/screens/pdv/pdv.dart';

void main() {
  ///WidgetsFlutterBinding.ensureInitialized();
  FirebaseFirestore db = FirebaseFirestore.instance;

  db.collection('usuarios').doc('pontuacao').set({'Jonathan': '250'});

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => const MyHomePage(),
        '/pdv': (context) => const MyPdvScreen(),
        '/delivery': (context) => const MydeliveryScreen(),
        '/adm': (context) => const MyAdmScreen(),
      },
    );
  }
}
