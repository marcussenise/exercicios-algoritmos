// import 'dart:collection';
// import 'dart:math';

// void main(){
  //A função hash deve fornecer uma boa distribuição. 
  //Se o fator de carga for > 0.7, redimensionamos a tabela hash.

  //Aqui na verdade nosso Array criado será de LinkedLists. 
  //Cada linkedList armazenará os seus Map<String, dynamic>.
  // List<Map<String, dynamic>> listaTelefonica = [];

  //   int funcaoHash(String entrada){  

      //A função hash deve ter conhecimento do tamanho do array.
      //Aqui vai a função que vai hashear a String
      //Podemos utilizar por ex o primeiro caractere da String como índice para hashear
      
      //ex: int indice = hashearStringPorOrdemAlfabetica(entrada)
      
      //nesse caso, cada espaço do array será para uma letra do alfabeto
      //podemos decidir a melhor função para hashear de acordo com a String 
      //(se sempre vão ter comprimentos diferentes, muitas letras começando iguais, etc)

      //return indice;
//   }

//   void addEntrada(String entrada, dynamic valor){
//     if(listaTelefonica.isNotEmpty){
//       listaTelefonica.forEach((element) {
//         //  Pra evitar duplicatas checamos em cada Map da LinkedList que está no array
//         //  se a chave já existe. Se sim, retornar nulo pra não add a duplicata.
//         if(element.containsKey(entrada)){
//           return null;
//         } else{
//           int indice = funcaoHash(entrada);
//           Map<String, dynamic> mapa = Map();
//           mapa[entrada] = valor;
//           listaTelefonica.insert(indice, mapa);

//         }
    
//     });
//   }}

//   addEntrada('marcus', 61999329021);
// }