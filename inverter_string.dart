void main() {
  inverter("palavra");
}

void inverter(String palavra) {
  final listaCaracteres = palavra.split("");
  String novaPalavra = "";
  for (var i = listaCaracteres.length - 1; i >= 0; i--) {
    novaPalavra += listaCaracteres[i];
  }
  print(novaPalavra);
}
