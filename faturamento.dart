import 'dart:convert';
import 'dart:io';

void main() async {
  var faturamentoJson = await readJsonFile("dados.json") as List;
  List<FaturamentoDiario> list = faturamentoJson
      .map((tagJson) => FaturamentoDiario.fromJson(tagJson))
      .toList()
      .where((element) => element.valor != 0)
      .toList();
  num menorValor = 0;
  num maiorValor = 0;
  num somaTotal = 0;

  for (int i = 0; i < list.length; i++) {
    final faturamentoDiario = list[i].valor;
    if (faturamentoDiario > maiorValor) {
      maiorValor = faturamentoDiario;
    }
    if (faturamentoDiario < menorValor || i == 0) {
      menorValor = faturamentoDiario;
    }
    somaTotal += faturamentoDiario;
  }
  num media = somaTotal / list.length;
  print("maior valor: $maiorValor");
  print("menor valor: $menorValor");
  print("soma total do faturamento: $somaTotal");
  print("Media total $media");
  int numDias = 0;
  for (var i = 0; i < list.length; i++) {
    final faturamentoDiario = list[i].valor;
    if (faturamentoDiario > media) {
      numDias += 1;
    }
  }
  print("numero de dias $numDias");
}

Future<dynamic> readJsonFile(String filePath) async {
  final input = await File(filePath).readAsString();
  final map = jsonDecode(input);
  return map;
}

class FaturamentoDiario {
  FaturamentoDiario(this.dia, this.valor);
  int dia;
  num valor;
  factory FaturamentoDiario.fromJson(dynamic json) {
    return FaturamentoDiario(json['dia'] as int, json['valor'] as num);
  }

  @override
  String toString() {
    return '{ ${this.dia}, ${this.valor} }';
  }
}
