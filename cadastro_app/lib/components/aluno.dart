import 'package:cadastro_app/components/salvos.dart';
import 'package:csc_picker/csc_picker.dart';
import 'package:flutter/material.dart';

class Alunoform extends StatefulWidget {
  const Alunoform({super.key});
  @override
  State<Alunoform> createState() => _AlunoformState();
}

class _AlunoformState extends State<Alunoform> {
  final sexValue = ValueNotifier('');
  final corValue = ValueNotifier('');
  final alergiaValue = ValueNotifier('');

  final sexOpcoes = ['Feminino', 'Masculino'];
  final corOpcoes = ['Branca', 'Preta', 'Parda', 'Amarela', 'Indigena'];
  final alergiaOpcoes = ['SIM', 'NÃO'];

  final medicacaoValue = ValueNotifier('');
  final medicacaoOpcoes = ['SIM', 'NÃO'];

  final sexResponseValue = ValueNotifier('');
  final corResponseValue = ValueNotifier('');
  final moradiaValue = ValueNotifier('');
  final estadoValue = ValueNotifier('');
  final escolaridadeValue = ValueNotifier('');
  final auxilioValue = ValueNotifier('');

  final sexReponseOpcoes = ['Feminino', 'Masculino'];
  final corResponseOpcoes = ['Branca', 'Preta', 'Parda', 'Amarela', 'Indigena'];
  final moradiaOpcoes = ['Alugada', 'Própria', 'Cedida'];
  final estadoOpcoes = [
    'Casado(a)',
    'Solteiro(a)',
    'Divorciado(a)',
    'Separado(a)',
    'União Estável',
    'Viúvo(a)'
  ];
  final escolaridadeOpcoes = [
    'Analfabeto',
    'Alfabetizado',
    'Fundamental Incompleto',
    'Fundamental Completo',
    'Medio Incompleto',
    'Medio Completo',
    'Ensino Superior Incompleto',
    'Ensino Superior Completo'
  ];
  final auxilioOpcoes = ['SIM', 'NÃO'];

  final nomeController = TextEditingController();
  final nascimentoController = TextEditingController();
  final sexoController = TextEditingController();
  final racaController = TextEditingController();
  final enderecoController = TextEditingController();
  final rgController = TextEditingController();
  final cpfController = TextEditingController();
  final maeController = TextEditingController();
  final paiController = TextEditingController();
  final escolaController = TextEditingController();
  final alergiaController = TextEditingController();

  _submitForm() {
    final nome = nomeController.text;
    final nascimento = nascimentoController.text;
    final sexo = sexoController.text;
    final raca = racaController.text;
    final endereco = enderecoController.text;
    final rg = rgController.text;
    final cpf = cpfController.text;
    final mae = maeController.text;
    final pai = paiController.text;
    final escola = escolaController.text;
    final alergia = alergiaController.text;

    if (nome.isEmpty || cpf.isEmpty) {
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastro de Alunos'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.black)),
            margin: const EdgeInsets.all(15),
            width: MediaQuery.of(context).size.width * 0.75,
            child: Column(
              children: [
                const SizedBox(height: 25),
                const Text('Informações do Aluno',
                    style:
                        TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(child: Text('*Nome Completo: ')),
                    SizedBox(
                        width: MediaQuery.of(context).size.width * 0.55,
                        child: const TextField()),
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(child: Text('*Nascimento: ')),
                    SizedBox(
                        width: MediaQuery.of(context).size.width * 0.16,
                        child: TextFormField()),
                    const SizedBox(child: Text('*Sexo: ')),
                    SizedBox(
                      child: ValueListenableBuilder(
                          valueListenable: sexValue,
                          builder: (BuildContext context, String value, _) {
                            return DropdownButton<String>(
                              hint: const Text(''),
                              value: (value.isEmpty) ? null : value,
                              onChanged: (opcao) =>
                                  sexValue.value = opcao.toString(),
                              items: sexOpcoes
                                  .map(
                                    (escolha) => DropdownMenuItem(
                                      value: escolha,
                                      child: Text(escolha),
                                    ),
                                  )
                                  .toList(),
                            );
                          }),
                    ),
                    const SizedBox(child: Text('*Raça/Cor: ')),
                    SizedBox(
                      child: ValueListenableBuilder(
                          valueListenable: corValue,
                          builder: (BuildContext context, String value, _) {
                            return DropdownButton<String>(
                              hint: const Text(''),
                              value: (value.isEmpty) ? null : value,
                              onChanged: (opcao) =>
                                  corValue.value = opcao.toString(),
                              items: corOpcoes
                                  .map(
                                    (escolha) => DropdownMenuItem(
                                      value: escolha,
                                      child: Text(escolha),
                                    ),
                                  )
                                  .toList(),
                            );
                          }),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(child: Text('*Endereço: ')),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.3,
                      child: TextFormField(),
                    ),
                    const SizedBox(child: Text('*Nº: ')),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.04,
                      child: TextFormField(),
                    ),
                    const SizedBox(child: Text('*Bairro: ')),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.2,
                      child: TextFormField(),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(child: Text('*UF: ')),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.30,
                      child: CSCPicker(
                        layout: Layout.horizontal,
                        onCountryChanged: (pais) {},
                        onStateChanged: (estado) {
                          ///salvar String no Aluno cadastrado
                        },
                        onCityChanged: (cidade) {
                          ///salvar String no Aluno cadastrado
                        },
                        countrySearchPlaceholder: 'País',
                        stateSearchPlaceholder: 'Estado',
                        citySearchPlaceholder: 'Cidade',
                        countryDropdownLabel: 'Selecione o País',
                        stateDropdownLabel: 'Selecione o Estado',
                        cityDropdownLabel: 'Selecione a cidade',
                      ),
                    ),
                    const SizedBox(child: Text('*CEP: ')),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.20,
                      child: TextFormField(),
                    )
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(child: Text('*RG:')),
                    SizedBox(
                        width: MediaQuery.of(context).size.width * 0.25,
                        child: TextFormField()),
                    const SizedBox(width: 10),
                    const SizedBox(
                      child: Text('*CPF:'),
                    ),
                    SizedBox(
                        width: MediaQuery.of(context).size.width * 0.25,
                        child: TextFormField()),
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(child: Text('*Nome Completo da Mãe: ')),
                    SizedBox(
                        width: MediaQuery.of(context).size.width * 0.50,
                        child: TextFormField()),
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(child: Text('*Nome Completo do Pai: ')),
                    SizedBox(
                        width: MediaQuery.of(context).size.width * 0.51,
                        child: TextFormField()),
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(child: Text('*Escola: ')),
                    SizedBox(
                        width: MediaQuery.of(context).size.width * 0.65,
                        child: TextFormField()),
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                        child: Text('*Possui algum tipo de alergia? ')),
                    SizedBox(
                      child: ValueListenableBuilder(
                          valueListenable: alergiaValue,
                          builder: (BuildContext context, String value, _) {
                            return DropdownButton<String>(
                              hint: const Text(''),
                              value: (value.isEmpty) ? null : value,
                              onChanged: (opcao) =>
                                  alergiaValue.value = opcao.toString(),
                              items: alergiaOpcoes
                                  .map(
                                    (escolha) => DropdownMenuItem(
                                      value: escolha,
                                      child: Text(escolha),
                                    ),
                                  )
                                  .toList(),
                            );
                          }),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.40,
                      child: TextFormField(),
                    )
                  ],
                ),
                const SizedBox(height: 25),
                Container(
                  height: 2,
                  width: MediaQuery.of(context).size.width * 0.7,
                  color: Colors.black45,
                ),
                const SizedBox(height: 25),
                const Text('Informações do Responsavel pelo Aluno',
                    style:
                        TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(child: Text('*Nome Completo:')),
                    const SizedBox(width: 10),
                    SizedBox(
                        width: MediaQuery.of(context).size.width * 0.55,
                        child: TextFormField()),
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(child: Text('*Nascimento: ')),
                    SizedBox(
                        width: MediaQuery.of(context).size.width * 0.12,
                        child: TextFormField()),
                    const SizedBox(child: Text('*Idade: ')),
                    SizedBox(
                        width: MediaQuery.of(context).size.width * 0.03,
                        child: TextFormField()),
                    const SizedBox(child: Text('*Sexo: ')),
                    SizedBox(
                      child: ValueListenableBuilder(
                          valueListenable: sexResponseValue,
                          builder: (BuildContext context, String value, _) {
                            return DropdownButton<String>(
                              hint: const Text(''),
                              value: (value.isEmpty) ? null : value,
                              onChanged: (opcao) =>
                                  sexResponseValue.value = opcao.toString(),
                              items: sexReponseOpcoes
                                  .map(
                                    (escolha) => DropdownMenuItem(
                                      value: escolha,
                                      child: Text(escolha),
                                    ),
                                  )
                                  .toList(),
                            );
                          }),
                    ),
                    const SizedBox(child: Text('*Raça/Cor: ')),
                    SizedBox(
                      child: ValueListenableBuilder(
                          valueListenable: corResponseValue,
                          builder: (BuildContext context, String value, _) {
                            return DropdownButton<String>(
                              hint: const Text(''),
                              value: (value.isEmpty) ? null : value,
                              onChanged: (opcao) =>
                                  corResponseValue.value = opcao.toString(),
                              items: corResponseOpcoes
                                  .map(
                                    (escolha) => DropdownMenuItem(
                                      value: escolha,
                                      child: Text(escolha),
                                    ),
                                  )
                                  .toList(),
                            );
                          }),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(child: Text('Estado Civil: ')),
                    SizedBox(
                      child: ValueListenableBuilder(
                          valueListenable: estadoValue,
                          builder: (BuildContext context, String value, _) {
                            return DropdownButton<String>(
                              hint: const Text(''),
                              value: (value.isEmpty) ? null : value,
                              onChanged: (opcao) =>
                                  estadoValue.value = opcao.toString(),
                              items: estadoOpcoes
                                  .map(
                                    (escolha) => DropdownMenuItem(
                                      value: escolha,
                                      child: Text(escolha),
                                    ),
                                  )
                                  .toList(),
                            );
                          }),
                    ),
                    const SizedBox(child: Text('Escolaridade: ')),
                    SizedBox(
                      child: ValueListenableBuilder(
                          valueListenable: escolaridadeValue,
                          builder: (BuildContext context, String value, _) {
                            return DropdownButton<String>(
                              hint: const Text(''),
                              value: (value.isEmpty) ? null : value,
                              onChanged: (opcao) =>
                                  escolaridadeValue.value = opcao.toString(),
                              items: escolaridadeOpcoes
                                  .map(
                                    (escolha) => DropdownMenuItem(
                                      value: escolha,
                                      child: Text(escolha),
                                    ),
                                  )
                                  .toList(),
                            );
                          }),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(child: Text('*RG: ')),
                    SizedBox(
                        width: MediaQuery.of(context).size.width * 0.15,
                        child: TextFormField()),
                    const SizedBox(width: 10),
                    const SizedBox(
                      child: Text('*CPF: '),
                    ),
                    SizedBox(
                        width: MediaQuery.of(context).size.width * 0.15,
                        child: TextFormField()),
                    const SizedBox(
                      child: Text('*Telefone: '),
                    ),
                    SizedBox(
                        width: MediaQuery.of(context).size.width * 0.15,
                        child: TextFormField()),
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(child: Text('*Renda Familiar: ')),
                    const SizedBox(width: 10),
                    SizedBox(
                        width: MediaQuery.of(context).size.width * 0.05,
                        child: TextFormField()),
                    const SizedBox(child: Text('*Situação da Moradia: ')),
                    const SizedBox(width: 10),
                    SizedBox(
                      child: ValueListenableBuilder(
                          valueListenable: moradiaValue,
                          builder: (BuildContext context, String value, _) {
                            return DropdownButton<String>(
                              hint: const Text(''),
                              value: (value.isEmpty) ? null : value,
                              onChanged: (opcao) =>
                                  moradiaValue.value = opcao.toString(),
                              items: moradiaOpcoes
                                  .map(
                                    (escolha) => DropdownMenuItem(
                                      value: escolha,
                                      child: Text(escolha),
                                    ),
                                  )
                                  .toList(),
                            );
                          }),
                    ),
                    const SizedBox(child: Text('Valor do Aluguel: ')),
                    const SizedBox(width: 10),
                    SizedBox(
                        width: MediaQuery.of(context).size.width * 0.05,
                        child: TextFormField()),
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                        child: Text('*Recebe Algum auxilio do governo? ')),
                    SizedBox(
                      child: ValueListenableBuilder(
                          valueListenable: auxilioValue,
                          builder: (BuildContext context, String value, _) {
                            return DropdownButton<String>(
                              hint: const Text(''),
                              value: (value.isEmpty) ? null : value,
                              onChanged: (opcao) =>
                                  auxilioValue.value = opcao.toString(),
                              items: auxilioOpcoes
                                  .map(
                                    (escolha) => DropdownMenuItem(
                                      value: escolha,
                                      child: Text(escolha),
                                    ),
                                  )
                                  .toList(),
                            );
                          }),
                    ),
                    const SizedBox(width: 15),
                    SizedBox(
                        width: MediaQuery.of(context).size.width * 0.25,
                        child: TextFormField(
                          decoration:
                              const InputDecoration(hintText: 'Qual auxilio'),
                        )),
                  ],
                ),
                const SizedBox(height: 25),
                Container(
                  height: 2,
                  width: MediaQuery.of(context).size.width * 0.7,
                  color: Colors.black45,
                ),
                const SizedBox(height: 25),
                const Text('Informações para Acompanhamento',
                    style:
                        TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
                const Text('Nutricional e Psicológico',
                    style:
                        TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('*Idade: '),
                    SizedBox(
                        width: MediaQuery.of(context).size.width * 0.05,
                        child: TextFormField()),
                    const Text('*Altura: '),
                    SizedBox(
                        width: MediaQuery.of(context).size.width * 0.05,
                        child: TextFormField()),
                    const Text('*Peso: '),
                    SizedBox(
                        width: MediaQuery.of(context).size.width * 0.05,
                        child: TextFormField()),
                    const Text('*Quant. de refeições diárias: '),
                    SizedBox(
                        width: MediaQuery.of(context).size.width * 0.05,
                        child: TextFormField()),
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('*Toma alguma medicação: '),
                    SizedBox(
                      child: ValueListenableBuilder(
                          valueListenable: medicacaoValue,
                          builder: (BuildContext context, String value, _) {
                            return DropdownButton<String>(
                              hint: const Text(''),
                              value: (value.isEmpty) ? null : value,
                              onChanged: (opcao) =>
                                  medicacaoValue.value = opcao.toString(),
                              items: medicacaoOpcoes
                                  .map(
                                    (escolha) => DropdownMenuItem(
                                      value: escolha,
                                      child: Text(escolha),
                                    ),
                                  )
                                  .toList(),
                            );
                          }),
                    ),
                    const SizedBox(width: 15),
                    SizedBox(
                        width: MediaQuery.of(context).size.width * 0.25,
                        child: TextFormField(
                          decoration:
                              const InputDecoration(hintText: 'Qual Medicação'),
                        )),
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('*Algum Trauma Recente?'),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.53,
                      child: TextFormField(),
                    )
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('*O que te deixa Irritado?'),
                    SizedBox(
                        width: MediaQuery.of(context).size.width * 0.54,
                        child: TextFormField()),
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('*O que te deixa Triste?'),
                    SizedBox(
                        width: MediaQuery.of(context).size.width * 0.552,
                        child: TextFormField()),
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                        '*Tem na familia pessoas que possuem algum tipo de vicio?'),
                    SizedBox(
                        width: MediaQuery.of(context).size.width * 0.25,
                        child: TextFormField()),
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    const Text(
                        '*Tem na familia algum membro que necessite de cuidados especiais?'),
                    SizedBox(
                        width: MediaQuery.of(context).size.width * 0.168,
                        child: TextFormField()),
                  ],
                ),
                const SizedBox(height: 15),
                Container(
                  height: 2,
                  width: MediaQuery.of(context).size.width * 0.7,
                  color: Colors.black45,
                ),
                const SizedBox(height: 15),
                const Text('(*) Informações Obrigatórias.'),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OutlinedButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => Savepage()));
                        },
                        child: const Text(
                          'Salvar',
                          style: TextStyle(color: Colors.black),
                        ))
                  ],
                ),
                const SizedBox(height: 15),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
