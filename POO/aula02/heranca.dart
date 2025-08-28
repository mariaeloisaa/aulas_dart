import 'dart:io';

class Veiculo{ // classe mãe
  String nome; // não precisa inicializar
  String modelo;
  int? qtd_rodas;

  Veiculo({required this.nome, required this.modelo, this.qtd_rodas});

}

class Carro extends Veiculo{ // filho
  Carro({required String nome, required String modelo, int? qtd_rodas}):
  super(nome:nome, modelo:modelo, qtd_rodas: qtd_rodas);

}

class Moto extends Veiculo{ // filho
  Moto({required String nome, required String modelo, int? qtd_rodas}):
  super(nome:nome, modelo:modelo, qtd_rodas: qtd_rodas);

}

void main(){
  Carro celta = Carro(nome: "celtinha", modelo: "celta", qtd_rodas: 4);
  Moto moto = Moto(nome: "motinha", modelo: "fazer");
}