void main(){

  //Exemplo função recursiva
  int retornaFatorial(int numero){
    if(numero <= 1){
      return 1;
    } else{
      return numero * retornaFatorial(numero-1);
    }
  }

  print(retornaFatorial(5));


  //Uso de caso recursivo com caso-base sendo uma array vazia.
 int funcaoSoma(List<int> lista, int somaProvisoria){
    int somaTotal = somaProvisoria;
    int ultimoNumeroLista = lista.removeLast();
    somaTotal += ultimoNumeroLista;

    if(lista.isEmpty){
      return somaTotal;
    } else{
      somaTotal = funcaoSoma(lista, somaTotal);
    }
    return somaTotal;
  };


  print(funcaoSoma([2, 4, 6], 0));


  //Função recursiva que conta o número de items de uma lista
  int numeroItemsdaLista(List<int> listaInt, novaContagem){
    int contagem = novaContagem;
    
    if(listaInt.isEmpty){
      return contagem;
    } else{
      listaInt.removeLast();
      contagem++;
      contagem = numeroItemsdaLista(listaInt, contagem);
    }

    return contagem;
  }

  print(numeroItemsdaLista([1, 2, 3, 4, 5, 6], 0));

  
  //Encontrando valor mais alto de uma lista recursivamente
  int retornaValorMaisAlto(List<int> listaInt, int valor){
    int valorMaisAlto = valor;
    
    if(listaInt.isEmpty){
      return valorMaisAlto;
    } else{
      int ultimoNumero = listaInt.removeLast();
      if(ultimoNumero > valorMaisAlto){
        valorMaisAlto = ultimoNumero;
        valorMaisAlto = retornaValorMaisAlto(listaInt, valorMaisAlto);
      } else{
        valorMaisAlto = retornaValorMaisAlto(listaInt, valorMaisAlto);
      }
    }

    return valorMaisAlto;
  }

  print(retornaValorMaisAlto([10, 23, 65, 69, 09, 64], 0));

}