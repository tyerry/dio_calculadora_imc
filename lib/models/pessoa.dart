class Pessoa {
  late String nome;
  late double peso;
  late double altura;

  // Construtor da classe
  Pessoa(String nome, double peso, double altura) {
    this.nome = nome;
    this.peso = peso;
    this.altura = altura;
  }

  // Método para calcular o IMC de acordo com a tabela fornecida
  String calculaImc() {
    String resultado = (peso / (altura * altura)).toStringAsFixed(2);
    double resultadoTabela = double.tryParse(resultado) ?? 0.0;

    switch (resultadoTabela) {
      case < 16:
        return 'Magreza Grave';
      case >= 16 && < 17:
        return 'Magreza Moderada';
      case >= 17 && < 18.5:
        return 'Magreza Leve';
      case >= 18.5 && < 25:
        return 'Saudável';
      case >= 25 && < 30:
        return 'Sobrepeso';
      case >= 30 && < 35:
        return 'Obesidade Grau 1';
      case >= 35 && < 40:
        return 'Obesidade Grau 2 (severa)';
      case >= 40:
        return 'Obesidade Grau 3 (mórbida)';
      default:
        return 'Resultado inconclusivo';
    }
  }
}
