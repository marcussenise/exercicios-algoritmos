void main() {
  List<String> fila_pesquisa = [];
  List<String> pessoas_verificadas = [];
  Map<String, List<String>> mapa = Map();
  // Usamos grafos para achar menores caminhos, por ex em árvares genealógicas, relações em redes sociais, ciência de dados, etc
  // A chave será a aresta e os valores serão os vértices do relacionamento com a chave
  mapa['marcus'] = ['alice', 'bob', 'claire'];
  mapa['alice'] = ['marcus', 'mayara'];

  if (mapa['marcus'] != null) {
    fila_pesquisa.addAll(mapa['marcus']!.toList());
  }

  bool pessoa_termina_com_s(String pessoa) {
    if (pessoa[pessoa.length - 1] == 's') {
      return true;
    } else
      return false;
  }

  while (fila_pesquisa.isNotEmpty) {
    String pessoa = fila_pesquisa.removeAt(0);
    //primeiro verificamos se a pessoa já foi verificada, pra evitar loops infinitos
    //depois verificamos se a pessoa é o que estamos procurando (alguma condição).
    //se for, retorna true, se não, add todos seus vizinhos à lista novamente

    if (!pessoas_verificadas.contains(pessoa)) {
      if (pessoa_termina_com_s(pessoa)) {
        print('Pessoa $pessoa termina com s!');
        break;
      } else {
        print('Pessoa $pessoa não termina com s');
        pessoas_verificadas.add(pessoa);
        if (mapa[pessoa] != null) {
          fila_pesquisa.addAll(mapa[pessoa]!.toList());
        }
      }
    }
  }

  print(pessoas_verificadas);
}