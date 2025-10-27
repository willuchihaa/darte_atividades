import 'pessoa.dart';

class Fornecedor extends Pessoa {
  double _valorCredito;
  double _valorDivida;

  Fornecedor()
      : _valorCredito = 0.0,
        _valorDivida = 0.0;

  Fornecedor.parcial({
    required String nome,
    required String endereco,
    required String telefone,
    required double valorCredito,
    required double valorDivida,
  })  : _valorCredito = valorCredito,
        _valorDivida = valorDivida,
        super.parcial(nome: nome, endereco: endereco, telefone: telefone);

  double get valorCredito => _valorCredito;
  set valorCredito(double value) => _valorCredito = value;

  double get valorDivida => _valorDivida;
  set valorDivida(double value) => _valorDivida = value;

  double obterSaldo() => _valorCredito - _valorDivida;

  @override
  void mostrarDados() {
    super.mostrarDados();
    print('Credito: $_valorCredito');
    print('Divida: $_valorDivida');
  }
}

void main() {
  Fornecedor f = Fornecedor.parcial(
    nome: 'Empresa empresarial',
    endereco: 'Avenida Centro, 456',
    telefone: '98328-1245',
    valorCredito: 8000.0,
    valorDivida: 3500.0,
  );
  f.mostrarDados();
  print('Saldo disponível: ${f.obterSaldo()}');
}
