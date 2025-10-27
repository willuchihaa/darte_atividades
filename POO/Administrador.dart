import 'empregado.dart';

class Administrador extends Empregado {
  double _ajudaDeCusto;

  Administrador()
      : _ajudaDeCusto = 0.0;

  Administrador.parcial({
    required String nome,
    required String endereco,
    required String telefone,
    required int codigoSetor,
    required double salarioBase,
    required double imposto,
    required double ajudaDeCusto,
  })  : _ajudaDeCusto = ajudaDeCusto,
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
    return super.calcularSalario() + _ajudaDeCusto;
  }

  @override
  void mostrarDados() {
    super.mostrarDados();
    print('Ajuda de Custo: $_ajudaDeCusto');
  }
}

void main() {
  Administrador a = Administrador.parcial(
    nome: 'Carlos Henrique',
    endereco: 'Rua das Palmeiras, 321',
    telefone: '95226-4486',
    codigoSetor: 1,
    salarioBase: 6000.0,
    imposto: 8.0,
    ajudaDeCusto: 1500.0,
  );
  a.mostrarDados();
  print('Salario total: ${a.calcularSalario()}');
}
