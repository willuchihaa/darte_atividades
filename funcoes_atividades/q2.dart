int soma(int a, int b) {
  return a + b;
}

double media(List<int> numeros) {
  int total = 0;
  for (var numero in numeros) {
    total = soma(total, numero);
  }
  return numeros.isEmpty ? 0 : total / numeros.length;
}

void main() {
  int resultado = soma(11, 4);
  print('o resultaddo da soma é: $resultado');

  List<int> lista = [9, 1, 2, 83];
  double resultadoMedia = media(lista);
  print('a media dos numeros ´e: $resultadoMedia');
}