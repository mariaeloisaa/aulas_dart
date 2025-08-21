import 'dart:io';

void main(){
  //criar lista

  List<String> produtos = ["Banana", "Maca", "Morango", "Melao", "Melancia"];
  List<String> compra = [];
  double valor_total=0;
  int pagamento=0;

  print("-- Bem-Vindo ao Hortifruti da Elo --");
  print("Produtos: \n$produtos");

  print("Insira o seu cpf");
  String? cpf = stdin.readLineSync();

  print("Para iniciar a compra, digite 'SIM'.");
  String? opcao = stdin.readLineSync();

  while(opcao=="SIM"){
    print("Qual produto deseja comprar? ");
    String? produto = stdin.readLineSync();

    if(produtos.contains(produto)){
      compra.add(produto!);
      print("Qual o valor desse produto? ");
      String? entrada = stdin.readLineSync();
      double preco = double.parse(entrada!);

      valor_total+=preco;

    } else{
      print("Produto não encontrado");
    }

    print("Deseja continuar comprando (SIM/NÃO)?");
    opcao = stdin.readLineSync();
  }

  if(opcao !="SIM" && compra.isNotEmpty){
    print("Compra encerrada!");
    print("Produtos comprados: \n$compra");
    print("Valor total - R\$${valor_total.toStringAsFixed(2)}");

    do{
      print("--- Formas de Pagamento ---");
      print("1. À vista (10% de desconto)");
      print("2. Parcelado (10% de juros)");
      print("3. Fiado (15% a mais para pagar na próxima compra)");

      String? entrada2 = stdin.readLineSync();
      pagamento = int.parse(entrada2!);

      if(pagamento<1 || pagamento>3){
        print("Opção inválida");
      }
    } while (pagamento<1 || pagamento>3);

    switch (pagamento){
      case 1:
      valor_total -= (valor_total*0.1);
      print("Total: ${valor_total.toStringAsFixed(2)}");
      break;

      case 2:
      valor_total += (valor_total*0.1);
      print("Total: ${valor_total.toStringAsFixed(2)}");
      break;

      case 3:
      double prox_compra = valor_total*0.15;
      print("Na próxima compra, pagar R\$${prox_compra.toStringAsFixed(2)}");
      break;
    }

  } else{
    print("Atendimento encerrado");
  }
}