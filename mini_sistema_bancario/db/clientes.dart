import '../pessoa.dart';

class Pessoas {
  static List<Pessoa> _pessoas = [];

  void cadastrar(Pessoa pessoa) {
    _pessoas.add(pessoa);
  }

  Iterable<Pessoa> buscar(String telefone) {
    return _pessoas.where((objPessoa) => objPessoa.telefone == telefone);
  }

  List<Pessoa> listar() {
    return _pessoas;
  }

  void remover(String telefone) {
    Iterable<Pessoa> pessoas = buscar(telefone);
    pessoas.forEach(
      (pessoa) {
        _pessoas.remove(pessoa);
      });
  }

  void editar(Pessoa objPessoa) {
    Iterable<Pessoa> listaDePessoas = buscar(objPessoa.telefone);

    listaDePessoas.forEach((antigaPessoa) {
      antigaPessoa = objPessoa;
    });
  }
}