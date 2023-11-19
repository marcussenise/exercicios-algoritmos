void main(){
  //Algoritmo de Dijkstra: usado pra calcular o caminho mínimo para um grafo ponderado.
  //Só funciona quando todos os pesos são positivos.

    Map<String,Map<String, int>> grafo = Map();
    grafo["inicio"] = {};
    grafo["inicio"]!["a"] = 6;
    grafo["inicio"]!["b"] = 2;
    grafo["a"] = {};
    grafo["a"]!["fim"] = 1;
    grafo["b"] = {};
    grafo["b"]!["a"] = 3;
    grafo["b"]!["fim"] = 5;
    grafo["fim"] = {};
;

    //Hash que guarda os custos (quantia necessária para ir do Início ao vértice em questão)
    //const infinito = 1/0;
    Map<String,int> custos = Map();    
    custos["a"] = 6;
    custos["b"] = 2;
    //Abaixo, o certo seria uma representação do infinito. 
    custos["fim"] = 9999999;
    
    Map<String,String> pais = Map();
    pais["a"] = "inicio";
    pais["b"] = "inicio";
    pais["fim"] = "";

    //Os vértices são processados apenas uma vez e armazenados aqui:
    List<String> verticesProcessados = [];
    
    ache_custo_mais_baixo(Map<String,int> custos){
      int custo_mais_baixo = 9999999;
      String? vertice_custo_mais_baixo = null;

      for (String vertice in custos.keys){
        var custo = custos[vertice];
        if(custo! < custo_mais_baixo && !verticesProcessados.contains(vertice)){
          custo_mais_baixo = custo;
          vertice_custo_mais_baixo = vertice;
        };
      }
        return vertice_custo_mais_baixo;
    }


    //Sempre começaremos com o vértice de custo mais baixo:
    String? vertice = ache_custo_mais_baixo(custos);

    while (vertice != null) {
      var custo = custos[vertice];
      var vizinhos = grafo[vertice];

      for (var n in vizinhos!.keys){
        var novo_custo = custo! + vizinhos[n]!;
        if(custos[n]! > novo_custo){
          custos[n] = novo_custo;
          pais[n] = vertice;
        }
      }

      verticesProcessados.add(vertice);
      vertice = ache_custo_mais_baixo(custos); 

      print(custos);
      print(pais);
    }
}