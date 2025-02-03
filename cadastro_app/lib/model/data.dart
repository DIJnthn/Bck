class Aluno {
  final String nome;
  final DateTime nascimento;
  final bool sexo;
  final String raca;
  final String endereco;
  final String rg;
  final String cpf;
  final String mae;
  final String pai;
  final String escola;
  final bool alergia;
  final int idade;
  final double altura;
  final double peso;

  Aluno({
    required this.nome,
    required this.nascimento,
    required this.sexo,
    required this.raca,
    required this.endereco,
    required this.rg,
    required this.cpf,
    required this.mae,
    required this.pai,
    required this.escola,
    required this.alergia,
    required this.idade,
    required this.altura,
    required this.peso
  });
}

class Response {
  final String nome;
  final DateTime nascimento;
  final int idade;
  final bool sexo;
  final String raca;
  final String estadoCivil;
  final String escolaridade;
  final String profissao;
  final int cpf;
  final int rg;
  final int telefone;
  final double renda;
  final String moradia;
  final double aluguel;
  final bool auxilio;

  Response({
    required this.nome,
    required this.nascimento,
    required this.idade,
    required this.sexo,
    required this.raca,
    required this.estadoCivil,
    required this.escolaridade,
    required this.profissao,
    required this.cpf,
    required this.rg,
    required this.telefone,
    required this.renda,
    required this.moradia,
    required this.aluguel,
    required this.auxilio,
  });
}