import 'dart:io';

import 'funcao_return.dart';

void main(){
  String pessoa1 = apresentacao("Elo");
  print(pessoa1); 

}

String apresentacao (String nome){
  return "seu nome é $nome";
}


