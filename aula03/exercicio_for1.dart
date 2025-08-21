import 'dart:io';

void main(){
  print("--- Sistema de Simulação de Pagamentos ---");
  
  print("Digite o valor total da compra: ");
  String? entrada = stdin.readLineSync();
  double valor = double.parse(entrada!);

  print("Digite a quantidade de parcelas: ");
  String? entrada2 = stdin.readLineSync();
  double parcelas = double.parse(entrada2!);

  double parcela = valor/parcelas;

  for (int i = 1; i <= parcelas; i++) {
    print("Parcela $i: R\$${parcela.toStringAsFixed(2)}");
  }

}

