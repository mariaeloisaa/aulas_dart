import 'dart:io';

class Animal{
  String nome;
  int idade;
  Animal ({required this.nome, required this.idade});

  void fazerSom(){
    print("Au au");
  }

  @override //para sempre que for inicializado, pega a ultima atualizacao dos dados
  String toString(){
    return "$nome - $idade anos";
  }


}

class Cachorro extends Animal{
  Cachorro({required String nome, required int idade}):
  super(nome: nome, idade: idade);

}

class Gato extends Animal{
  Gato({required String nome, required int idade}):
  super(nome: nome, idade: idade);

  

  @override
  void fazerSom() {
    print("Miau, Miau");

  }

}


void main(){
  Cachorro mel =Cachorro(nome: "Mel", idade: 5);

  mel.fazerSom();
}