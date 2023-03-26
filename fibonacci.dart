void main() {
  fibonacci(13);
}

void fibonacci(int numero) {
  int n1 = 0;
  int n2 = 1;
  int n3 = 0;
  bool pertenecefibonacci = false;
  print(n1);
  print(n2);

  do {
    n3 = n1 + n2;
    print('$n3');
    n1 = n2;
    n2 = n3;
    if (numero == n3) {
      pertenecefibonacci = true;
    }
  } while (numero >= n3);

  if (pertenecefibonacci == true) {
    print("O número pertence a sequencia");
  } else {
    print("O número não pertence a sequencia");
  }
}
