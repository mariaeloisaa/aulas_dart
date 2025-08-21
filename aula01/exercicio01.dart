import 'dart:io';

void main(){
  print("Olá, verifique se está aprovado, reprovado ou de reucperação\n");
  double soma = 0;

  for (var i = 1; i <= 5; i++) {
    print("Insira a $iª nota: ");

    String? entrada = stdin.readLineSync();
    double nota = double.parse(entrada!);
    soma += nota;
  }

  double media = soma/5;

  if (media >= 5) {
    print("Sua média é: $media. Parabéns, você está aprovado!");
  }else if (media >= 4){
    print("Sua média é: $media. Você está de recuperação... estude mais!!");
  }else{
    print("Sua média é: $media. Você foi reprovado!! ):");
  }
}