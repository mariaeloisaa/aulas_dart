import 'dart:io';

class Conta{ // classe mãe
  String nome_titular; 
  double saldo_inicial;
  double? investimento;

  Conta({required this.nome_titular, required this.saldo_inicial, this.investimento});
}

class ContaCorrente extends Conta{ // filho
  double? limite_cheque;

  ContaCorrente({required String nome_titular, required double saldo_inicial, double?investimento, this.limite_cheque}):
  super(nome_titular:nome_titular, saldo_inicial:saldo_inicial, investimento:investimento);
}

class ContaPoupanca extends Conta{ // filho
  double taxa_rendimento;

  ContaPoupanca({required String nome_titular, required double saldo_inicial, double?investimento, required this.taxa_rendimento}):
  super(nome_titular:nome_titular, saldo_inicial:saldo_inicial, investimento:investimento);

  void saldo_atualizado(){
    double saldo_atualizado = saldo_inicial+(saldo_inicial * (taxa_rendimento*0.01));

    print("Saldo atual: R\$$saldo_inicial");
    print("Saldo com Taxa de Rendimento ($taxa_rendimento%) aplicada: R\$$saldo_atualizado");
  }
}
  
void main(){

  Conta conta = Conta(nome_titular: "Larissa", saldo_inicial: 0.0);
  ContaCorrente conta_corrente = ContaCorrente(nome_titular: "Deborah", saldo_inicial: 10.0, limite_cheque: 500);
  ContaPoupanca conta_poupanca = ContaPoupanca(nome_titular: "Eloisa", saldo_inicial: 200, taxa_rendimento: 10);

  conta_poupanca.saldo_atualizado();

}