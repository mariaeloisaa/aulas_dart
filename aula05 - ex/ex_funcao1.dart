import 'dart:io';

void main(){
  print("Insira o valor original do produto: ");
  String? entrada1 = stdin.readLineSync();
  double preco = double.parse(entrada1!);

  print("Insira a porcentagem de desconto: ");
  String? entrada2 = stdin.readLineSync();
  double desconto = double.parse(entrada2!);

  print("O valor final do seu produto de $preco reais, com $desconto% de desconto é ${calcularDesconto(preco, desconto)} reais");

}

double calcularDesconto(double preco, double desconto){
  return preco - (preco*(desconto/100));
}