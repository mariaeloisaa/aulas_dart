import 'dart:io';

// ATRIBUTO OBRIGATÓRIO E OPCIONAL

class Produto {
  String nome ="";
  double preco = 0.0;
  String? descricao; // ? porque pode ser nulo

  Produto({required this.nome, required this.preco, this.descricao}); // coloca chaves e required antes dos obrigatórios

}

void main(){
  Produto cocaCola = Produto(nome: "Coquinha Gelada", preco: 50); // apenas atributos obrigatorios
  Produto pepsi = Produto(nome: "Pepsi", preco: 50, descricao: "Beba coca"); // com atributo opcional
}