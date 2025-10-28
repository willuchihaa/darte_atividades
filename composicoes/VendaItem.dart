import 'produto.dart';

class VendaItem {
  Produto produto;
  int quantidade;
  double _preco;

  VendaItem({
    required this.produto,
    this.quantidade = 1,
  }) : _preco = produto.precoComDesconto;

  double get preco => _preco;

  set preco(double novoPreco) {
    if (novoPreco > 0) {
      _preco = novoPreco;
    }
  }

  double get total => _preco * quantidade;

  @override
  String toString() {
    return '${produto.nome} (x$quantidade) - R\$${total.toStringAsFixed(2)}';
  }
}
