import 'dart:io';

class Animal{ // classe mãe
  String nome;
  int idade;

  Animal({required this.nome, required this.idade});

}

class Cachorro extends Animal{ // filho
  String? raca;
  Cachorro({required String nome, required int idade, this.raca}):
  super(nome:nome, idade:idade);

  void fazer_som(){
    print("$nome fez Au Au");
  }

}

class Gato extends Animal{ // filho
  String? cor;
  Gato({required String nome, required int idade, this.cor}):
  super(nome:nome, idade:idade);

    void fazer_som(){
    print("$nome fez Miau");
  }

}

void main(){

  Cachorro mel = Cachorro(nome: "Mel", idade: 16, raca: "Pequinês");
  Gato zozoe_gorda = Gato(nome: "Zoe", idade: 5, cor: "Preto e Branco");

  print("O nome da cachorra é ${mel.nome} e é da raça ${mel.raca} e tem ${mel.idade} anos");
  mel.fazer_som();

  print("O nome da gatinha é ${zozoe_gorda.nome} e é da raça ${zozoe_gorda.cor} e tem ${zozoe_gorda.idade} anos");
  zozoe_gorda.fazer_som();
}