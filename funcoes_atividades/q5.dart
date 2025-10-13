int multiplicar(int a, int b) {
  return a * b;
}

void main() {
  var operacao = multiplicar;
  int resultado = operacao(3, 4);
  print('o resultado é: $resultado');
}