import 'dart:io';

main(){

  Carro uno = Carro("Uno Firezinho", "Branquinho", "Fiat", "Escada", 0.0);
  uno.acelerar();
  uno.acelerar();
  uno.acelerar();
  uno.acelerar();
  uno.acelerar();

  print(uno.velocidade);

}

class Carro {
  String modelo = "";
  String cor = "";
  String marca = "";
  String acessorio = "";
  double velocidade = 0.0;

  Carro(this.modelo, this.cor, this.marca, this.acessorio, this.velocidade);

  void acelerar(){
    velocidade+=10;
  }
}

