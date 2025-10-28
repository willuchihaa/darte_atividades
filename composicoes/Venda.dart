import 'cliente.dart';
import 'vendaItem.dart';

class Venda {
  Cliente cliente;
  List<VendaItem> itens;

  Venda({
    required this.cliente,
    this.itens = const [],
  });

  double get valorTotal {
    return itens.fold(0, (soma, item) => soma + item.total);
  }

  @override
  String toString() {
    String resumoItens = itens.map((item) => '  - ${item.toString()}').join('\n');
    return '''
  Cliente: ${cliente.nome}
  Itens:
  $resumoItens
  Valor Total: R\$${valorTotal.toStringAsFixed(2)}
  ''';
  }
}
