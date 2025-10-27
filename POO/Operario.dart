import 'empregado.dart';

class Operario extends Empregado {
  double _valorProducao;
  double _comissao;

  Operario()
      : _valorProducao = 0.0,
        _comissao = 0.0;

  Operario.parcial({
    required String nome,
    required String endereco,
    required String telefone,
    required int codigoSetor,
    required double salarioBase,
    required double imposto,
    required double valorProducao,
    required double comissao,
  })  : _valorProducao = valorProducao,
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
    return super.calcularSalario() + (_valorProducao * _comissao / 100);
  }

  @override
  void mostrarDados() {
    super.mostrarDados();
    print('Valor da producao: $_valorProducao');
    print('Comissao: $_comissao%');
  }
}

void main() {
  Operario o = Operario.parcial(
    nome: 'Ana Lima',
    endereco: 'Avenida das Flores, 123',
    telefone: '90876-1235',
    codigoSetor: 3,
    salarioBase: 2800.0,
    imposto: 5.0,
    valorProducao: 12000.0,
    comissao: 5.0,
  );
  o.mostrarDados();
  print('Salario total: ${o.calcularSalario()}');
}
