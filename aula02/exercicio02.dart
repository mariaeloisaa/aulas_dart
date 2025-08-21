import 'dart:io';

void main(){
  print("Insira o seu nome");
  String? nome = stdin.readLineSync();

  print("Insira o seu último salário:");
  String? entrada1 = stdin.readLineSync();
  double salario1 = double.parse(entrada1!);

  print("Insira o seu penultimo salário:");
  String? entrada2 = stdin.readLineSync();
  double salario2 = double.parse(entrada2!);

  print("Insira o seu antepenultimo salário:");
  String? entrada3 = stdin.readLineSync();
  double salario3 = double.parse(entrada3!);

  double media = (salario3+salario2+salario1)/3;

  print("A média dos seus 3 ultimos salários é $media");

  if (salario3 < 0 || salario2 < 0 || salario1 < 0){
    print("Por favor insira um salário positivo");
  } else if(media <= 1400){
    print("É $nome, a vida não é fácil");
  } else if(media<=5000){
    print("Tops");
  } else{
    print("Ta com a grana");
  }
}