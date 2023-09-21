import 'dart:convert';
import 'dart:io';

// Introdução ao programa
void intro() => print(":::: CALCULADORA DE IMC");

// Regex para identificar caracteres que não são letras
final regex = RegExp(r'[^a-zA-Z]');

// Lê os dados do console esperando uma string
String inputRead(String text) {
  print(text);
  var prompt = stdin.readLineSync(encoding: utf8);
  return prompt ?? '';
}

// Lê os dados do console esperando um double
double inputDoubleRead(String text) {
  try {
    var result = double.parse(inputRead(text).replaceAll(',', '.'));
    return result;
  } catch (e) {
    print(
        "ATENÇÃO! Dados inválidos, insira apenas números (inteiros ou flutuantes) e tente novamente.");
    exit(0);
  }

  /*
  Neste caso, em vez de usar o try/catch poderíamos também fazer
  da seguinte maneira usando tryParse para prevenir o possível erro:

  var result = double.tryParse(inputRead(text).replaceAll(',', '.'));
  if (result == null) {
    print("ATENÇÃO! Dados inválidos, tente novamente.");
    exit(0);
  }
  return result;
  */
}
