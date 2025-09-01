import 'dart:io';

class Forma{

  void calcular_area(double medida1, double medida2){
    print("Calculando área");
  }

}

class Quadrado extends Forma{

  @override
  void calcular_area(double medida1, double medida2){
    print("A área do quadrado é ${medida1*medida2}");
  }

}

class Retangulo extends Forma{

  @override
  void calcular_area(double medida1, double medida2){
    print("A área do retângulo é ${medida1*medida2}");
  }

}


class Circulo extends Forma{

  @override
  void calcular_area(double medida1, double medida2){
    print("A área do círculo é ${medida1*(medida2*medida2)}");
  }

}

void main(){
  List<Forma> formas =[];

  Forma nada = Forma();
  Forma quadrado = Quadrado();
  Forma retangulo = Retangulo();
  Forma circulo = Circulo();
  
  formas.add(nada);
  formas.add(quadrado);
  formas.add(retangulo);
  formas.add(circulo);

  formas.forEach((Forma i) => i.calcular_area(2, 5));
}