void main() {
  //Quicksort separa no pivô os elementos menores, que ficam
  //em um subarray à esquerda, e os elementos maiors, que ficam em um
  // subarray à direita.
  //Após isso, usamos recursão em cada subarray.
  List<int> quicksort(List<int> lista) {
    if (lista.length < 2) {
      return lista;
    } else {
      final meio = lista.length ~/ 2;
      int pivo = lista[meio];
      lista.removeAt(meio);

      List<int> menores = [];
      List<int> maiores = [];

      for (int i = 0; i < lista.length; i++) {
        if (lista[i] <= pivo) {
          menores.add(lista[i]);
        } else if (lista[i] > pivo) {
          maiores.add(lista[i]);
        }
      }

      return quicksort(menores) + [pivo] + quicksort(maiores);
    }
  }

  print(quicksort([0, 21, 3, 1, 6, 5, 0, 81, 2, 14, 56, 32, 1, 9, 8]));
}
