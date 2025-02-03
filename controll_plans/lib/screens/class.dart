class Usuario{
  final int idUser;
  final String nome;
  final String email;
  final String telefone;
  final String senha;

  Usuario({
    required this.idUser,
    required this.nome,
    required this.email,
    required this.telefone,
    required this.senha,
  });
}

class DadosFinanceiros{
  final double salario;
  final double liquido;
  final double descontado;
  final double adiantamento;
  final double extras;
  final double totalPago;
  final double totalAPagar;

  DadosFinanceiros({
    required this.salario,
    required this.liquido,
    required this.descontado,
    required this.adiantamento,
    required this.extras,
    required this.totalAPagar,
    required this.totalPago,
  });
}

class DespesasPagas{
  final String descricao;
  final double valor;
  final DateTime data;
  final String observacao;
  final String formaPagamento;

  DespesasPagas({
    required this.descricao,
    required this.valor,
    required this.data,
    required this.observacao,
    required this.formaPagamento,
  });
}

class DespesasPendentes{
  final int idPendente;
  final String descricao;
  final double valor;
  final DateTime data;
  final String observacao;
  final String prioridade;

  DespesasPendentes({
    required this.idPendente,
    required this.descricao,
    required this.valor,
    required this.data,
    required this.observacao,
    required this.prioridade,
  });
}