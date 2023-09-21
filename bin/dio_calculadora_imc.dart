import 'package:dio_calculadora_imc/models/Pessoa.dart';
import 'package:dio_calculadora_imc/models/console.dart';

void main() {
  // Printa a introdução
  intro();

  // Coleta o nome do usuário no console e faz a saudação de acordo com
  // o tipo de usuário identificado ou não
  var nome = inputRead(':: Qual é o seu nome?').replaceAll(regex, '');
  nome == ''
      ? print('>> Seja bem vindo, Usuário Anônimo!')
      : print('>> Seja bem vindo, $nome!');

  // Coleta o peso do usuário no console
  var peso = inputDoubleRead(':: Qual é o seu peso em Quilogramas?');

  // Coleta a altura do usuário no console
  var altura = inputDoubleRead(':: Qual é a sua altura em metros?');

  // Criar uma instância da classe Pessoa com os dados coletados
  Pessoa pessoa1 = Pessoa(nome, peso, altura);

  // Executa o cálculo do IMC e retorna o resultado da tabela
  String conclusao = pessoa1.calculaImc();

  // Printa o resultado final
  print('Seu estado é considerado: $conclusao');
}
