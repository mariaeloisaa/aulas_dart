import 'dart:ffi';
import 'dart:io';

void main(){

  //vini
  Humano vinicius = Humano("Vinicius de Almeida Alves", "Masculino", 1.7 ); // objeto

  //lari
  Humano larissa = Humano("Larissa Gonçalves Santos", "Feminino", 1.7); // objeto

  //debs
  Humano deborah = Humano("Deborah Marcondes Ferrareze", "Feminino", 1.66 ); // objeto


  print(vinicius); // fala que ele é uma instancia de um humano
  print(vinicius.nome);

}


class Humano{ // classe
  String nome="";
  String genero="";
  double altura=0.0;

  Humano(this.nome, this.genero, this.altura); //construtor
  // serve para inicializar um objeto ja com as informações, reduzindo o código


}

