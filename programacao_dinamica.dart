void main(){
  //Programação dinâmica é útil quando estamos tentando otimizar algo em relação a um limite.
  //Usamos quando o problema puder ser dividido em subproblemas discretos (não interdependentes).
  
  void maiorSubstringComum(String palavraA, String palavraB){
    //cada célula conterá o comprimento da maior substring que duas substrings têm em comum
    //os eixos serão as duas palavras comparadas
    //I = linha / J = coluna

    Map<int, Map<int,int>> tabela = Map();
    int maiorSequencia = 0; 
    
    for(var i=0; i<palavraA.length; i++){
      tabela[i] = {};
      
      for(var j=0; j<palavraB.length; j++){
         if(palavraA[i] == palavraB[j]){
          if(tabela[i-1] != null && tabela[i-1]![j-1] != null){
            tabela[i]![j] = tabela[i-1]![j-1]! + 1;
          } else{
            tabela[i]![j] = 1;
          }
        } else{
          tabela[i]![j] = 0;
        }

        if(tabela[i]![j]! > maiorSequencia){
          maiorSequencia = tabela[i]![j]!;
        }
      }
    }

    print(tabela);
    print(maiorSequencia);
  }

  maiorSubstringComum('fish', 'hish');


  //na contagem de subsequência, contamos o número de letras que duas palavras têm em comum
  maiorSubsequenciaComum(String palavraA, String palavraB){
    Map<int, Map<int,int>> tabela = Map();
    int maiorSubsequencia = 0; 
    
    for(var i=0; i<palavraA.length; i++){
      tabela[i] = {};
      
      for(var j=0; j<palavraB.length; j++){
         if(palavraA[i] == palavraB[j]){
          if(tabela[i-1] != null && tabela[i-1]![j-1] != null){
            tabela[i]![j] = tabela[i-1]![j-1]! + 1;
            maiorSubsequencia = tabela[i-1]![j-1]! + 1;
          } else{
            tabela[i]![j] = 1;
          }
        } else{
          tabela[i]![j] = maiorSubsequencia;
        }

        if(tabela[i]![j]! > maiorSubsequencia){
          maiorSubsequencia = tabela[i]![j]!;
        }
      }
    }

    print(maiorSubsequencia);
  }

  maiorSubsequenciaComum('fish', 'fosh');


}