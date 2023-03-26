void main() {
  num sp = 67836.43;
  num rj = 36678.66;
  num mg = 29229.88;
  num es = 27165.48;
  num outros = 19849.48;
  num total = sp + rj + mg + es + outros;

  calcularPorcentual(sp, total, "SP");
  calcularPorcentual(rj, total, "RJ");
  calcularPorcentual(mg, total, "MG");
  calcularPorcentual(es, total, "ES");
  calcularPorcentual(outros, total, "Outros");
}

void calcularPorcentual(num sumEstado, num total, String estado) {
  num porcentual = ((sumEstado * 100) / total);
  print("Porcentual do $estado é ${porcentual.toInt()}%");
}


//SP – R$67.836,43
//RJ – R$36.678,66
//MG – R$29.229,88
//ES – R$27.165,48
//Outros – R$19.849,53