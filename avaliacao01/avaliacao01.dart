import 'dart:io';

List<String> servicos = [
  "Banho e Tosa",
  "Consulta Veterinária",
  "Hospedagem",
  "Creche",
  "Adestramento"
];
List<double> precos = [70.50, 120.0, 75.90, 90.50, 130.00];

int escolha = 0;
int indice = 0;
double valor_total = 0;
double valor_final = 0;
int opcao_pagamento = 0;
double juros = 0;
double juros_porcentagem = 0;
double desconto_porcentagem = 0;
String forma_pagamento = "";
double troco = 0;

String nome = "";
String documento = "";

List<String> carrinho_servicos = [];
List<double> carrinho_valores = [];
void main(){ 
  print("--- BEM-VINDO AO PET SHOP DA ELO --- ");
  print("Para iniciar, insira o seu nome: ");
  nome = stdin.readLineSync()!;
  while (nome == null || nome.trim().isEmpty){
    print("Existe dado nulo ou vazio, insira novamente seu nome: "); 
    nome = stdin.readLineSync()!; }
  
  print("Agora insira seu documento: ");
  documento = stdin.readLineSync()!; 

  while (documento== null || documento.trim().isEmpty) {
    print("Existe dado nulo ou vazio, insira novamente seu documento: ");
    documento = stdin.readLineSync()!; }
    
  menuCliente(); 
  
}

void menuCliente() {
  do {
    try {
      print("\n--- PET SHOP DA ELO --- ");
      print("Selecione o que deseja: ");
      print("1. Listar Serviços");
      print("2. Adicionar Serviço");
      print("3. Deletar Serviço");
      print("4. Ver Carrinho");
      print("5. Finalizar Compra");
      print("6. Sair");

      escolha = int.parse(stdin.readLineSync()!);
    } on FormatException {
      print("Digite apenas números.");
      continue;
    }

    switch (escolha) {
      case 1:
        print("Serviços");
        listar_servicos();
        break;

      case 2:
        try {
          print("Qual serviço deseja adicionar?");
          indice = int.parse(stdin.readLineSync()!);

          carrinho_servicos.add(servicos[indice - 1]);
          carrinho_valores.add(precos[indice - 1]);

          print("${servicos[indice - 1]} adicionado com sucesso!");
        } on FormatException {
          print("Digite apenas números.");
        } on RangeError {
          print("Serviço inválido.");
        }
        break;

      case 3:
        try {
          if (carrinho_servicos.isEmpty) {
            print("Seu carrinho está vazio.");
            break;
          }

          print("Qual serviço deseja deletar?");
          indice = int.parse(stdin.readLineSync()!);

          print("${carrinho_servicos[indice - 1]} removido.");
          carrinho_servicos.removeAt(indice - 1);
          carrinho_valores.removeAt(indice - 1);
        } on FormatException {
          print("Digite apenas números.");
        } on RangeError {
          print("Serviço inválido.");
        }
        break;

      case 4:
      if(carrinho_servicos.isEmpty){
        print("Você não tem nada no carrinho");
      }else{
        print("Seu carrinho:");
        seu_carrinho();
      }
        break;

      case 5:
        seu_carrinho();
        if (carrinho_servicos.isEmpty) {
          print("Seu carrinho está vazio, adicione itens antes.");
          break;
        }

        formas_pagamento();
        do {
          try {
            opcao_pagamento = int.parse(stdin.readLineSync()!);
          } on FormatException {
            print("Digite apenas números.");
          }
          if (opcao_pagamento < 1 || opcao_pagamento > 5) {
            print("Opção inválida");
          }
        } while (opcao_pagamento < 1 || opcao_pagamento > 5);

        valor_final = valor_total;

        switch (opcao_pagamento) {
          case 1:
            valor_final -= (valor_total * 0.1);
            print("Total: R\$${valor_final.toStringAsFixed(2)}");

            stdout.write("Digite o valor em dinheiro: ");
            double dinheiro = double.parse(stdin.readLineSync()!);

            troco = dinheiro - valor_final;
            forma_pagamento = "Dinheiro";

            if (dinheiro > valor_final) {
              print("Troco: R\$${troco.toStringAsFixed(2)}. Compra finalizada!");
            } else if (dinheiro < valor_final) {
              print("Saldo insuficiente, tente novamente.");
            } else {
              print("Compra finalizada!");
            }
            break;

          case 2:
            valor_final -= (valor_total * 0.1);
            desconto_porcentagem = 10;
            forma_pagamento = "Débito";
            print("Total: R\$${valor_final.toStringAsFixed(2)}");
            break;

          case 3:
            juros = valor_total * 0.10;
            juros_porcentagem = 10;
            valor_final += juros;
            forma_pagamento = "Crédito";
            print("Total: R\$${valor_final.toStringAsFixed(2)}");
            break;

          case 4:
            valor_final -= (valor_total * 0.15);
            desconto_porcentagem = 15;
            forma_pagamento = "PIX";
            print("Total: R\$${valor_final.toStringAsFixed(2)}");
            break;

          case 5:
            forma_pagamento = "Boleto";
            print("Sério? Boleto???!!!??");
            print("Total: R\$${valor_final.toStringAsFixed(2)}");
            break;
        }

        imprimir_recibo();
        escolha = 6;
        break;

      case 6:
        if(carrinho_servicos.isNotEmpty){
          print("Deseja finalizar mesmo possuindo serviços em seu carrinho? (S/N)");
          String? opcao = stdin.readLineSync();
          if (opcao=="S") {
            print("Saindo...");
          }else if (opcao == "N"){
            escolha =0;
            print("Voltando ao menu...");
          } else{
            print("Escolha inválida! Voltando ao menu... ");
            escolha=0; 
          }
          } break;

      default:
        print("Opção Inválida");
        break;
    }
  } while (escolha != 6);
}

void listar_servicos() {
  for (var i = 0; i < servicos.length; i++) {
    print("${i + 1}. ${servicos[i]} - R\$${precos[i]}");
  }
}

void seu_carrinho() {
  if (carrinho_servicos.isEmpty) {
    print("Seu carrinho está vazio.");
  } else {
    valor_total = carrinho_valores.fold(0, (soma, valor) => soma + valor);

    for (var i = 0; i < carrinho_servicos.length; i++) {
      print("${i + 1}. ${carrinho_servicos[i]} - R\$${carrinho_valores[i]}");
    }
    print("Valor total ----- R\$${valor_total.toStringAsFixed(2)}");
  }
}

void formas_pagamento() {
  print("Formas de Pagamento: ");
  print("1. Dinheiro - 10% de desconto");
  print("2. Débito - 10% de desconto");
  print("3. Crédito - 10% de juros");
  print("4. PIX - 15% de desconto");
  print("5. Boleto -_-");
}

void imprimir_recibo() {
  print("\n---- RECIBO ----");
  print("Cliente: $nome | $documento");
  print("Compras:");
  for (var i = 0; i < carrinho_servicos.length; i++) {
    print("- ${carrinho_servicos[i]} - R\$${carrinho_valores[i]}");
  }
  print("--------------------------------");
  print("Subtotal:       R\$${valor_total.toStringAsFixed(2)}");
  print("Descontos:      $desconto_porcentagem%");
  print("Juros:          $juros_porcentagem%");
  print("Total:          R\$${valor_final.toStringAsFixed(2)}");
  print("Forma de Pagamento: $forma_pagamento");
  print("---- Obrigado por comprar no PET SHOP DA ELO! ----\n");
}
