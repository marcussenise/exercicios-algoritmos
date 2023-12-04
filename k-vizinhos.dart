import 'dart:io';
import 'dart:math';

void main(){
  //Extraímos as características (gostos por categorias de filmes) de cada user e medimos a distância (usando teorema de Pitágoras) 
  //entre eles para descobrir qual user tem um gosto mais similar com o outro. 
  //A partir daí, para criar um sistema de recomendação, basta recomendar os filmes preferidos dos usuários mais semelhantes.
  
  String? user1;
  String? user2;
  String? user3;
  List<int?> notasUser1 = [];
  List<int?> notasUser2 = [];
  List<int?> notasUser3 = [];
  
  print('Digite o nome do 1° usuário:');
  user1 = stdin.readLineSync();
  print('Digite o nome do 2° usuário:');
  user2 = stdin.readLineSync();
  print('Digite o nome do 3° usuário:');
  user3 = stdin.readLineSync();
  print('Que nota (1 a 5), $user1 dá para filmes de comédia?');
  notasUser1.insert(0, int.tryParse(stdin.readLineSync()!));
  print('Que nota (1 a 5), $user1 dá para filmes de ação?');
  notasUser1.insert(1, int.tryParse(stdin.readLineSync()!));
  print('Que nota (1 a 5), $user1 dá para filmes de drama?');
  notasUser1.insert(2, int.tryParse(stdin.readLineSync()!));
  print('Que nota (1 a 5), $user1 dá para filmes de terror?');
  notasUser1.insert(3, int.tryParse(stdin.readLineSync()!));
  print('Que nota (1 a 5), $user1 dá para filmes de romance?');
  notasUser1.insert(4, int.tryParse(stdin.readLineSync()!));
  print('Que nota (1 a 5), $user2 dá para filmes de comédia?');
  notasUser2.insert(0, int.tryParse(stdin.readLineSync()!));
  print('Que nota (1 a 5), $user2 dá para filmes de ação?');
  notasUser2.insert(1, int.tryParse(stdin.readLineSync()!));
  print('Que nota (1 a 5), $user2 dá para filmes de drama?');
  notasUser2.insert(2, int.tryParse(stdin.readLineSync()!));
  print('Que nota (1 a 5), $user2 dá para filmes de terror?');
  notasUser2.insert(3, int.tryParse(stdin.readLineSync()!));
  print('Que nota (1 a 5), $user2 dá para filmes de romance?');
  notasUser2.insert(4, int.tryParse(stdin.readLineSync()!));
  print('Que nota (1 a 5), $user3 dá para filmes de comédia?');
  notasUser3.insert(0, int.tryParse(stdin.readLineSync()!));
  print('Que nota (1 a 5), $user3 dá para filmes de ação?');
  notasUser3.insert(1, int.tryParse(stdin.readLineSync()!));
  print('Que nota (1 a 5), $user3 dá para filmes de drama?');
  notasUser3.insert(2, int.tryParse(stdin.readLineSync()!));
  print('Que nota (1 a 5), $user3 dá para filmes de terror?');
  notasUser3.insert(3, int.tryParse(stdin.readLineSync()!));
  print('Que nota (1 a 5), $user3 dá para filmes de romance?');
  notasUser3.insert(4, int.tryParse(stdin.readLineSync()!));
  print(notasUser1);
  print(notasUser2);
  print(notasUser3);
  
  //Quanto menor o resultado, maior a compatibilidade entre usuários.
  double similaridadeUser1EUser2 = sqrt(pow(notasUser1[0]! - notasUser2[0]!, 2) + pow(notasUser1[1]! - notasUser2[1]!, 2) + pow(notasUser1[2]! - notasUser2[2]!, 2) + pow(notasUser1[3]! - notasUser2[3]!, 2) + pow(notasUser1[4]! - notasUser2[4]!, 2));
  double similaridadeUser1EUser3 = sqrt(pow(notasUser1[0]! - notasUser3[0]!, 2) + pow(notasUser1[1]! - notasUser3[1]!, 2) + pow(notasUser1[2]! - notasUser3[2]!, 2) + pow(notasUser1[3]! - notasUser3[3]!, 2) + pow(notasUser1[4]! - notasUser3[4]!, 2));
  double similaridadeUser2EUser3 = sqrt(pow(notasUser2[0]! - notasUser3[0]!, 2) + pow(notasUser2[1]! - notasUser3[1]!, 2) + pow(notasUser2[2]! - notasUser3[2]!, 2) + pow(notasUser2[3]! - notasUser3[3]!, 2) + pow(notasUser2[4]! - notasUser3[4]!, 2));
  print(similaridadeUser1EUser2);
  print(similaridadeUser1EUser3);
  print(similaridadeUser2EUser3);
}