void main(){
  //Algoritmos gulosos fazem escolhas locais na esperança de que essas escolhas levem a uma solução ótima global.
  //Em cada etapa, um algoritmo guloso escolhe a opção que parece a melhor naquele momento, sem considerar as consequências a longo prazo.
  //Essa estratégia pode não garantir a solução globalmente ótima, mas muitas vezes leva a soluções aceitáveis ou aproximadamente ótimas.
  
  //Exemplo de algoritmo guloso utilizando conjuntos:

  //Lista dos estados que queremos abranger:
  Set estados_abranger = <String>{"mt", "wa", "or", "id", "nv", "ut", "ca", "az"};
  
  //Tabela hash com lista de estações que podem ser escolhidas e os estados que elas abrangem
  Map<String, Set> estacoes = Map();
  estacoes['kum'] = Set.from(['id', 'nv', 'ut']);
  estacoes['kdois'] = Set.from(['wa', 'id', 'mt']);
  estacoes['ktres'] = Set.from(['or', 'nv', 'ca']);
  estacoes['kquatro'] = Set.from(['nv', 'ut']);
  estacoes['kcinco'] = Set.from(['ca', 'az']);

  Set estacoes_final = {};


  while (estados_abranger.isNotEmpty) {
    String? melhor_estacao;
    //estados_cobertos = conjunto de tds estados que essa estação abrange que ainda não foram cobertos
    Set estados_cobertos = {};  
    
    //A cada mapeamento pegamos a estação que abrange mais estados ainda não cobertos.
    estacoes.map((key, value) {      
      Set cobertos = estados_abranger.intersection(value);
      
      if(cobertos.length > estados_cobertos.length){
        melhor_estacao = key;
        estados_cobertos = cobertos;
      }

      estados_abranger = estados_abranger.difference(estados_cobertos);
      estacoes_final.add(melhor_estacao);
      
      return MapEntry(key, value);
    });
  }
    estacoes_final.removeWhere((element) => element == null);
    print(estacoes_final);
}