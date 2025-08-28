import 'dart:io';

class Conta{ // classe mãe
  String nome_titular; 
  double saldo_inicial;
  double? investimento;

  Conta({required this.nome_titular, required this.saldo_inicial, this.investimento});

}

class ContaCorrente extends Conta{ // filho
  double? limite_cheque;
  ContaCorrente({required String nome_titular, required double saldo_inicial, double?investimento});
  super(nome_titular:nome_titular, saldo_inicial:saldo_inicial, investimenro:investimento);
}
  
void main(){


}