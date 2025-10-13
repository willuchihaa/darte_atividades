List<int> maximo_minimo(List<int> numeros) {
  if (numeros.isEmpty) {
    throw ArgumentError('A lista nao pode estar vazia...');
  }
  int maximo = numeros[0];
  int minimo = numeros[0];
  for (var numero in numeros) {
    if (numero > maximo) maximo = numero;
    if (numero < minimo) minimo = numero; 
  }
  return [maximo, minimo];
}

void main() {
  List<int> lista = [4, 7, 2, 8, 10, 3];
  List<int> resultado = maximo_minimo(lista);
  print('numero maximo: ${resultado[0]}, numero minimo: ${resultado[1]}');
}