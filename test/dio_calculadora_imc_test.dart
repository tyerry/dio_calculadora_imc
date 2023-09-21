import 'package:dio_calculadora_imc/models/pessoa.dart';
import 'package:test/test.dart';

void main() {
  group('Calcular IMC - Magreza Grave', () {
    var valoresMagrezaGrave = {
      {'nome': 'Anônimo', 'peso': 40, 'altura': 1.65}: 'Magreza Grave',
      {'nome': 'Anônimo', 'peso': 45, 'altura': 1.70}: 'Magreza Grave',
      {'nome': 'Anônimo', 'peso': 50, 'altura': 1.77}: 'Magreza Grave',
    };

    valoresMagrezaGrave.forEach((values, expected) {
      Pessoa pessoaTeste = Pessoa(
          values['nome'].toString(),
          double.parse(values['peso'].toString()),
          double.parse(values['altura'].toString()));

      test(
          'Calculando IMC - Nome, Peso e Altura: $values - Resultado esperado: $expected',
          () {
        expect(pessoaTeste.calculaImc(), equals(expected));
      });
    });
  });

  group('Calcular IMC - Magreza Moderada', () {
    var valoresMagrezaGrave = {
      {'nome': 'Anônimo', 'peso': 41, 'altura': 1.60}: 'Magreza Moderada',
      {'nome': 'Anônimo', 'peso': 48, 'altura': 1.70}: 'Magreza Moderada',
      {'nome': 'Anônimo', 'peso': 55, 'altura': 1.80}: 'Magreza Moderada',
    };

    valoresMagrezaGrave.forEach((values, expected) {
      Pessoa pessoaTeste = Pessoa(
          values['nome'].toString(),
          double.parse(values['peso'].toString()),
          double.parse(values['altura'].toString()));

      test(
          'Calculando IMC - Nome, Peso e Altura: $values - Resultado esperado: $expected',
          () {
        expect(pessoaTeste.calculaImc(), equals(expected));
      });
    });
  });

  group('Calcular IMC - Magreza Leve', () {
    var valoresMagrezaGrave = {
      {'nome': 'Anônimo', 'peso': 44, 'altura': 1.60}: 'Magreza Leve',
      {'nome': 'Anônimo', 'peso': 52, 'altura': 1.70}: 'Magreza Leve',
      {'nome': 'Anônimo', 'peso': 59, 'altura': 1.80}: 'Magreza Leve',
    };

    valoresMagrezaGrave.forEach((values, expected) {
      Pessoa pessoaTeste = Pessoa(
          values['nome'].toString(),
          double.parse(values['peso'].toString()),
          double.parse(values['altura'].toString()));

      test(
          'Calculando IMC - Nome, Peso e Altura: $values - Resultado esperado: $expected',
          () {
        expect(pessoaTeste.calculaImc(), equals(expected));
      });
    });
  });

  group('Calcular IMC - Saudável', () {
    var valoresMagrezaGrave = {
      {'nome': 'Anônimo', 'peso': 60, 'altura': 1.80}: 'Saudável',
      {'nome': 'Anônimo', 'peso': 60, 'altura': 1.70}: 'Saudável',
      {'nome': 'Anônimo', 'peso': 60, 'altura': 1.60}: 'Saudável',
    };

    valoresMagrezaGrave.forEach((values, expected) {
      Pessoa pessoaTeste = Pessoa(
          values['nome'].toString(),
          double.parse(values['peso'].toString()),
          double.parse(values['altura'].toString()));

      test(
          'Calculando IMC - Nome, Peso e Altura: $values - Resultado esperado: $expected',
          () {
        expect(pessoaTeste.calculaImc(), equals(expected));
      });
    });
  });

  group('Calcular IMC - Sobrepeso', () {
    var valoresMagrezaGrave = {
      {'nome': 'Anônimo', 'peso': 82, 'altura': 1.80}: 'Sobrepeso',
      {'nome': 'Anônimo', 'peso': 82, 'altura': 1.70}: 'Sobrepeso',
      {'nome': 'Anônimo', 'peso': 76, 'altura': 1.60}: 'Sobrepeso',
    };

    valoresMagrezaGrave.forEach((values, expected) {
      Pessoa pessoaTeste = Pessoa(
          values['nome'].toString(),
          double.parse(values['peso'].toString()),
          double.parse(values['altura'].toString()));

      test(
          'Calculando IMC - Nome, Peso e Altura: $values - Resultado esperado: $expected',
          () {
        expect(pessoaTeste.calculaImc(), equals(expected));
      });
    });
  });

  group('Calcular IMC - Obesidade Grau 1', () {
    var valoresMagrezaGrave = {
      {'nome': 'Anônimo', 'peso': 113, 'altura': 1.80}: 'Obesidade Grau 1',
      {'nome': 'Anônimo', 'peso': 100, 'altura': 1.70}: 'Obesidade Grau 1',
      {'nome': 'Anônimo', 'peso': 77, 'altura': 1.60}: 'Obesidade Grau 1',
    };

    valoresMagrezaGrave.forEach((values, expected) {
      Pessoa pessoaTeste = Pessoa(
          values['nome'].toString(),
          double.parse(values['peso'].toString()),
          double.parse(values['altura'].toString()));

      test(
          'Calculando IMC - Nome, Peso e Altura: $values - Resultado esperado: $expected',
          () {
        expect(pessoaTeste.calculaImc(), equals(expected));
      });
    });
  });

  group('Calcular IMC - Obesidade Grau 2 (severa)', () {
    var valoresMagrezaGrave = {
      {'nome': 'Anônimo', 'peso': 129, 'altura': 1.80}:
          'Obesidade Grau 2 (severa)',
      {'nome': 'Anônimo', 'peso': 102, 'altura': 1.70}:
          'Obesidade Grau 2 (severa)',
      {'nome': 'Anônimo', 'peso': 100, 'altura': 1.60}:
          'Obesidade Grau 2 (severa)',
    };

    valoresMagrezaGrave.forEach((values, expected) {
      Pessoa pessoaTeste = Pessoa(
          values['nome'].toString(),
          double.parse(values['peso'].toString()),
          double.parse(values['altura'].toString()));

      test(
          'Calculando IMC - Nome, Peso e Altura: $values - Resultado esperado: $expected',
          () {
        expect(pessoaTeste.calculaImc(), equals(expected));
      });
    });
  });

  group('Calcular IMC - Obesidade Grau 3 (mórbida)', () {
    var valoresMagrezaGrave = {
      {'nome': 'Anônimo', 'peso': 131, 'altura': 1.80}:
          'Obesidade Grau 3 (mórbida)',
      {'nome': 'Anônimo', 'peso': 116, 'altura': 1.70}:
          'Obesidade Grau 3 (mórbida)',
      {'nome': 'Anônimo', 'peso': 103, 'altura': 1.60}:
          'Obesidade Grau 3 (mórbida)',
    };

    valoresMagrezaGrave.forEach((values, expected) {
      Pessoa pessoaTeste = Pessoa(
          values['nome'].toString(),
          double.parse(values['peso'].toString()),
          double.parse(values['altura'].toString()));

      test(
          'Calculando IMC - Nome, Peso e Altura: $values - Resultado esperado: $expected',
          () {
        expect(pessoaTeste.calculaImc(), equals(expected));
      });
    });
  });
}
