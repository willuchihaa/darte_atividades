import 'pessoa.dart';

class Empregado extends Pessoa {
  int _codigoSetor;
  double _salarioBase;
  double _imposto;

  Empregado()
      : _codigoSetor = 0,
        _salarioBase = 0.0,
        _imposto = 0.0;

  Empregado.parcial({
    required String nome,
    required String endereco,
    required String telefone,
    required int codigoSetor,
    required double salarioBase,
    required double imposto,
  })  : _codigoSetor = codigoSetor,
        _salarioBase = salarioBase,
        _imposto = imposto,
        super.parcial(nome: nome, endereco: endereco, telefone: telefone);

  double calcularSalario() {
    return _salarioBase - (_salarioBase * _imposto / 100);
  }

  @override
  void mostrarDados() {
    super.mostrarDados();
    print('Setor: $_codigoSetor');
    print('Salario Base: $_salarioBase');
    print('Imposto: $_imposto%');
  }
}

void main() {
  Empregado e = Empregado.parcial(
    nome: 'Maria Oliveira',
    endereco: 'Rua B, 789',
    telefone: '975467-7237',
    codigoSetor: 5,
    salarioBase: 4000.0,
    imposto: 10.0,
  );
  e.mostrarDados();
  print('Salario liquido: ${e.calcularSalario()}');
}
