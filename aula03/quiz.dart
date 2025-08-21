import 'dart:io';

void main(){

  int opcao = 0;
  do{
    print("--- Formas de Pagamento ---");
    print("1. Crédito");
    print("2. Débito");
    print("3. PIX");
    print("4. Boleto");

    String? entrada = stdin.readLineSync();
    opcao = int.parse(entrada!);

    if(opcao < 1 || opcao > 4){
      print("Opção inválida");
    }

  }while(opcao < 1 || opcao > 4);
}