
// import 'dart:collection';
// import 'dart:math';

// void main(){
  //A função hash deve fornecer uma boa distribuição. 
  //Se o fator de carga for > 0.7, redimensionamos a tabela hash.

  //Aqui na verdade nosso Array criado será de LinkedLists. 
  //Cada linkedList armazenará os seus Map<String, dynamic>.
   //List<Map<String, dynamic>> listaTelefonica = [];
   List<String> listaTelefonica = [];

  //   int funcaoHash(String entrada){  

      //A função hash deve ter conhecimento do tamanho do array.
      //Podemos utilizar por ex o primeiro caractere da String como índice para hashear
      
      //ex: int indice = hashearStringPorOrdemAlfabetica(entrada[0])
      
      //nesse caso, cada espaço do array será para uma letra do alfabeto
      //podemos decidir a melhor função para hashear de acordo com a String 
      //(se sempre vão ter comprimentos diferentes, muitas letras começando iguais, etc)

      //return indice;
//   }

//   void addEntrada(String entrada, String valor){
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

      lerValor(String entrada){
        //Exemplo de busca em um Array
        return listaTelefonica[listaTelefonica.indexOf(entrada)];
      }


//   addEntrada('marcus', '61999329021');
// }