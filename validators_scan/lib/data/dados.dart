import 'package:flutter/material.dart';
import 'package:validators/models/mercadologico.dart';
import '../models/produto.dart';


const mercadologico = [
  Mercadologico(
    id: 'c1',
    title: 'CEREAIS',
    color: Colors.blueAccent,
  ),
  Mercadologico(
    id: 'c2',
    title: 'MATINAIS',
    color: Colors.blueAccent,
  ),
  Mercadologico(
    id: 'c3',
    title: 'MERCEARIA DOCE',
    color: Colors.blueAccent,
  ),
  Mercadologico(
    id: 'c4',
    title: 'BEBIDAS',
    color: Colors.blueAccent,
  ),
  Mercadologico(
    id: 'c5',
    title: 'PERFUMARIA',
    color: Colors.blueAccent,
  ),
  Mercadologico(
    id: 'c6',
    title: 'LIMPEZA',
    color: Colors.blueAccent,
  ),
  Mercadologico(
    id: 'c7',
    title: 'MERCEARIA SALGADA',
    color: Colors.blueAccent,
  ),
  Mercadologico(
    id: 'c8',
    title: 'DIET LIGHT',
    color: Colors.blueAccent,
  ),
  Mercadologico(
    id: 'c9',
    title: 'SALGADINHOS',
    color: Colors.blueAccent,
  ),
  Mercadologico(
    id: 'c10',
    title: 'BOBONIERE',
    color: Colors.blueAccent,
  ),
  Mercadologico(
    id: 'c11',
    title: 'EMBUTIDOS',
    color: Colors.blueAccent,
  ),
  Mercadologico(
    id: 'c12',
    title: 'LACTICINIOS',
    color: Colors.blueAccent,
  ),
  Mercadologico(
    id: 'c13',
    title: 'CONGELADOS',
    color: Colors.blueAccent,
  ),
  Mercadologico(
    id: 'c14',
    title: 'PADARIA',
    color: Colors.blueAccent,
  ),
  Mercadologico(
    id: 'c15',
    title: 'PADARIA PANNEMIX',
    color: Colors.blueAccent,
  ),
  Mercadologico(
    id: 'c16',
    title: 'FRIOS',
    color: Colors.blueAccent,
  ),
  Mercadologico(
    id: 'c17',
    title: 'OVOS',
    color: Colors.blueAccent,
  ),
];

List<Produto> itensSku = [
  Produto(descricao: 'CREMOGEMA 180G MORANGO', mercadologico: 'MATINAIS', conInt: 10918, codBarras: 7891150068308),
  Produto(descricao: 'ADES 1L LARANJA', mercadologico: 'BEBIDAS', conInt: 48282, codBarras: 7894900087048),
  
];
