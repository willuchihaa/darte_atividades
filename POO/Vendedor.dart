import 'empregado.dart';

class Vendedor extends Empregado {
  double _valorVendas;
  double _comissao;

  Vendedor()
      : _valorVendas = 0.0,
        _comissao = 0.0;

  Vendedor.parcial({
    required String nome,
    required String endereco,
    required String telefone,
    required int codigoSetor,
    required double salarioBase,
    required double imposto,
    required double valorVendas,
    required double comissao,
  })  : _valorVendas = valorVendas,
        _comissao = comissao,
        super.parcial(
          nome: nome,
          endereco: endereco,
          telefone: telefone,
          codigoSetor: codigoSetor,
          salarioBase: salarioBase,
          imposto: imposto,
        );

  @override
  double calcularSalario() {
    return super.calcularSalario() + (_valorVendas * _comissao / 100);
  }

  @override
  void mostrarDados() {
    super.mostrarDados();
    print('Valor das vendas: $_valorVendas');
    print('Comissao: $_comissao%');
  }
}

void main() {
  Vendedor v = Vendedor.parcial(
    nome: 'Paulo rodrigues',
    endereco: 'Rua das Árvores, 654',
    telefone: '8873-3334',
    codigoSetor: 9,
    salarioBase: 3200.0,
    imposto: 7.0,
    valorVendas: 20000.0,
    comissao: 8.0,
  );
  v.mostrarDados();
  print('salario total: ${v.calcularSalario()}');
}
