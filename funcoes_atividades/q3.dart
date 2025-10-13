double desconto(double preco, [double percentual = 10]) {
  return preco - (preco * percentual / 100);
}

void main() {
  double precoOriginal = 100.0;
  double precoComDescontoPadrao = desconto(precoOriginal);
  double precoComDescontoPersonalizado = desconto(precoOriginal, 15);

  print('Preço com desconto padrão (10%): R\$${precoComDescontoPadrao}');
  print('Preço com desconto de 20%: R\$${precoComDescontoPersonalizado}');
}