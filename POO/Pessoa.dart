class Pessoa {
  String _nome;
  String _endereco;
  String _telefone;

  Pessoa()
      : _nome = '',
        _endereco = '',
        _telefone = '';

  Pessoa.parcial({
    required String nome,
    required String endereco,
    required String telefone,
  })  : _nome = nome,
        _endereco = endereco,
        _telefone = telefone;

  Pessoa.completo(this._nome, this._endereco, this._telefone);

  // Getters e setters
  String get nome => _nome;
  set nome(String value) => _nome = value;

  String get endereco => _endereco;
  set endereco(String value) => _endereco = value;

  String get telefone => _telefone;
  set telefone(String value) => _telefone = value;

  void mostrarDados() {
    print('Nome: $_nome');
    print('Endereço: $_endereco');
    print('Telefone: $_telefone');
  }
}

void main() {
  Pessoa p = Pessoa.parcial(
    nome: 'Joao Pedro',
    endereco: 'Rua das Laranjeiras, 123',
    telefone: '92289-4453',
  );
  p.mostrarDados();
}
