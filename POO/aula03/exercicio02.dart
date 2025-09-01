import 'dart:io';

class Pagamento{

  void processar(){
    print("Processando pagamento...");
  }

}

class Pix extends Pagamento{

    @override
    void processar(){
    print("Processando pagamento com PIX...");
  }
}

class CartaoCredito extends Pagamento{

    @override
    void processar(){
    print("Processando pagamento com Cartão de Crédito...");
  }
}

class Boleto extends Pagamento{

    @override
    void processar(){
    print("Processando pagamento com Boleto...");
  }
}



void main(){
  print("Selecione a forma de pagamento:");
  print("1. PIX");
  print("2. Crédito");
  print("3. Boleto");

  int escolha = int.parse(stdin.readLineSync()!); 

  switch(escolha){
    case 1:

      Pix pix = Pix();
      pix.processar();
      break;

    case 2:
    
      CartaoCredito credito = CartaoCredito();
      credito.processar();
      break;

    case 3:
    
      Boleto boleto = Boleto();
      boleto.processar();
      break;

    default:
      print("Opção inválida");
      break;
    
  }
  

}