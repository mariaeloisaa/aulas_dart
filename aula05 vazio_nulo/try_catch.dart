import 'dart:io';

// //NORMAL
// void main(){
//   try {
//     print("Digite um número: ");
//     int numero = int.parse(stdin.readLineSync()!);
//   } catch (e) {
//     print("Seu erro foi: $e");
//   } finally{
//     print("Encerrando o programa");
//   }
// }



// // PARA CADA ERRO
// void main(){
//   try {
//     print("Digite um número: ");
//     int numero = int.parse(stdin.readLineSync()!);
//   } on FormatException {
//     print("Digite apenas números.");
//   } finally{
//     print("Encerrando o programa");
//   }
// }


// // OUTROS ERROS
// void main(){

//   List<int> lista =[1,2,3,4];
//   try {
//     print(lista[5]);
//   } on RangeError {
//     print("Imprima somente valores que estão no index da lista");
//   } catch(e){
//     print("Erro: $e");
//   }
// }