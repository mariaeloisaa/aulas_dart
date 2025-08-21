import 'dart:io';

void main(){
  print("Olá, verfique se você é maior de idade! \nQuantos anos você tem?");
  String? entrada1 = stdin.readLineSync();
  int idade = int.parse(entrada1!);

  bool eh_maior = ehMaiorIdade(idade);

  if(eh_maior == true){
    print("É maior de idade");
  }else{
    print("Não é maior de idade");
  }

}

bool ehMaiorIdade(int idade){
  if (idade >= 18){
    return true;
  }else return false;
}