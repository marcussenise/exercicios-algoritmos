void main(){

  int buscaMenor(List array){
    int menor = array[0];
    int menor_indice = 0;

    for (var i=0; i<array.length-1; i++) {
      if(array[i] < menor){
        menor = array[i];
        menor_indice = i;
      }
    }
    return menor_indice;
  }

  List<int> arrayOrdenado(List<int> array){
    List<int> novoArray = [];
    List<int> copiaArray = List.from(array);

    for (var i in array) {
      int menor = buscaMenor(copiaArray);
      novoArray.add(copiaArray.removeAt(menor));
    }
      return novoArray;
  }

  print(arrayOrdenado([5, 3, 6, 2, 10]));
}