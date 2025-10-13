String raindrops(int numero) {
  String resultado = '';
  if (numero % 3 == 0) resultado += 'Pling';
  if (numero % 5 == 0) resultado += 'Plang';
  if (numero % 7 == 0) resultado += 'Plong';
  return resultado.isEmpty ? numero.toString() : resultado;
}

void main() {
  print(raindrops(96));
  print(raindrops(32330));
  print(raindrops(34));
}