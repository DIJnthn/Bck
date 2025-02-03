class Produto{
  final int conInt;
  final String mercadologico;
  final String descricao;
  final int codBarras;
  final int quantidade = 0;
  final DateTime validade = DateTime.now();

  Produto({
    required this.descricao,
    required this.mercadologico,
    required this.conInt,
    required this.codBarras,
  });
}