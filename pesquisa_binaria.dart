
void main(){
  int? buscaBinaria(List<int> lista, int item){
    int baixo = 0;
    int alto = lista.length - 1;

    while (baixo <= alto) {
      int meio = ((baixo + alto) / 2).floor();
      int chute = lista[meio];

      if(chute == item){
        return meio;
      } else if(chute > item){
        alto = meio - 1;
      } else{
        baixo = meio + 1;
      }
  }
    return null; 
  }


  List<int> array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  print(buscaBinaria(array, 10));

}
