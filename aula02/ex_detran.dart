import 'dart:io';

void main(){

  double multa = 0;
  double parcela = 0;
  double valor = 0;

  print("Digite o nome do morotista: ");
  String? nome = stdin.readLineSync();

  print("Qual a velocidade $nome estava? ");
  String? entrada = stdin.readLineSync();
  double velocidade = double.parse(entrada!);

  if(velocidade<=60){
    print("Sem infração");
  } else if(velocidade<=80){
    print("Infração Leve - R\$150,00");
    multa = 150;
  } else if (velocidade<=100){
    print("Infração Média - R\$200,00");
    multa = 200;
  } else{
    print("Infração Grave - R\$250,00");
    multa = 250;
  }

  if (velocidade > 60){
    
    print("-- Opções de Pagamento -- \n1. Pagar á vista (10% de desconto) \n2. Parcelar em 2x (sem juros) \n3. Parcelar em 3x (10% de juros)");
    String? entrada2 = stdin.readLineSync();
    int opcao = int.parse(entrada2!);
      
    switch(opcao){
      case 1:
        double desconto = multa*0.1;
        valor = multa - desconto;
        print("Valor da multa: R\$$multa \nDesconto: R\$$desconto \nTotal: R\$$valor");
        break;
        
      case 2:
        parcela = multa/2;
        print("Valor da multa: R\$$multa \nParcelas: 2x de R\$${parcela.toStringAsFixed(2)}");
        break;

      case 3:
        parcela = multa/3;
        double juros = multa*0.10;
        valor = multa+juros;

        print("Valor da multa: R\$$multa \nParcelas: 3x de R\$${parcela.toStringAsFixed(2)} \nJuros (10%): R\$$juros \nTotal: R\$$valor ");
        break;

      default:
        print("Opção inválida");
    }
  }
}