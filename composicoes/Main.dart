import 'Venda.dart';
import 'cliente.dart';
import 'produto.dart';
import 'vendaItem.dart';

void main() {
  var cliente = Cliente(nome: 'francisco william', cpf: 999900000);

  var produto1 = Produto(codigo: 1, nome: 'Notebook gamer (muinto potente) ', preco: 3340.00, desconto: 10.00);
  var produto2 = Produto(codigo: 2, nome: 'Mouse hyperX', preco: 220.00);

  var item1 = VendaItem(produto: produto1, quantidade: 1);
  var item2 = VendaItem(produto: produto2, quantidade: 2);

  var venda = Venda(cliente: cliente, itens: [item1, item2]);

  print(venda);
}
