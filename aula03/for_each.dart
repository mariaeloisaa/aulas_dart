import 'dart:io';

void main(){
  List<String> genero = ["Terror", "Comédia", "Romance", "Avnetura"];

  // modo velho, normal
  for(String i in genero){
    print("Generos disponiveis $i");
  }

  // com for each, coisa linda
  genero.forEach((String i) => print(i));

  // duas formas de fazer a mesma coisa
}