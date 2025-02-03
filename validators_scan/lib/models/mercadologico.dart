import 'package:flutter/material.dart';

class Mercadologico{
  final String id;
  final String title;
  final Color color;

  const Mercadologico({
    required this.id,
    required this.title,
    this.color = Colors.blueAccent
  });
}