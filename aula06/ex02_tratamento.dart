import 'dart:io';

void main(){

  double valor=-1;

  do{
    try{
      print("Insira o valor da compra:");
      valor = double.parse(stdin.readLineSync()!);

      if (valor == null){
      print("Valor não pode ser nulo");
      }

      if (valor<0) {
        print("O valor precisa ser maior que zero, insira novamente!");
      }

    }on FormatException {
    print("Insira apenas números!");
    } 

  }while(valor<0);


  int op=0;

  while(op<1 || op>4){
    print("---- Opções de pagamento ----");
    print("1 - Dinheiro");
    print("2 - Cartão de Débito");
    print("3 - Cartão de Crédito");
    print("4 - Pix");

    try{
      op = int.parse(stdin.readLineSync()!);
    }on FormatException{
      print("Insira apenas números");
    }
    
    if(op<1||op>4){
      print("Opção inválida");
    }

  }

  print(valor);
}
    
  
