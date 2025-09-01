import 'dart:io';

class Animal{

  void falar(){
    print("Animal falou");
  }

}

class Cachorro extends Animal{

    @override
    void falar(){
    print("Cachorro fez Au au");
  }
}

class Gato extends Animal{

    @override
    void falar(){
    print("Gato fez Miau");
  }
}

class Papagaio extends Animal{

    @override
    void falar(){
    print("Papagaio fez PI PI PI");
  }
}


void main(){
  List<Animal> animais =[];

  Animal gatinha = Gato();
  Animal cachorrinho = Cachorro();
  Animal papagaio = Papagaio();
  
  animais.add(gatinha);
  animais.add(cachorrinho);
  animais.add(papagaio);

  animais.forEach((Animal i) => i.falar());
}