import 'dart:io';

void main(){
  int contador = 0;

  do{ // vai printar uma vez, verifica dps
    print("Este é o valor $contador");
  }while(contador>1);
  

  while(contador>1){ // n faz
    print("Este é o valore $contador");
  }
}