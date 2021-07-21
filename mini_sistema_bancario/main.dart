void main() {
  /* Estrutura for 
    1° indice -> Valor inicial da repetição
    2° Estrutura de controle -> operador relacional (>,<,>=,<=)
    3° Instrução de incremento/decremento
  */

  List<int> numeros = List.generate(10, (indice) => indice * 5);
  List<int> pares = [];

  // For incremental
  // for(int indice = 0 ; indice <= 20; indice ++) {
  //   print(indice);
  // }

  for(int indice = 0; indice < numeros.length; indice ++) {
    int valorSelecionado = numeros.elementAt(indice);
    if(valorSelecionado % 2 == 0); {
      pares.add(valorSelecionado);
    }
  }

  Iterable<int> valoresPares = numeros.where((numero) => numero % 2 == 0);

  // print(numeros.where((numero) => numero % 2 == 0));
  // print(pares);

  // for(int numero in valorPares) {
  //   print(numero);
  // }

  // for(int numero in numeros) {
  //   print(numero);
  // }

  valoresPares.forEach(printarValores);

  print("--------------------------");

  List<dynamic> valoresAleatorios = ["Gabriel",47,true,23.0,"Testando"];
  valoresAleatorios.forEach(printarValores);
}

  void printarValores(var valor) {
    if(valor is String) {
      print("O valor $valor é uma String");
    }
    if (valor is int) {
      print("O valor $valor é um inteiro");
    }
    if (valor is bool) {
      print("O valor $valor é um booleano");
    }
  }
