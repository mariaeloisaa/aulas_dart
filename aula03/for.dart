import 'dart:io';

void main(){
  List<String> frutas = [];
  for (int i = 0; i < 3; i++) {
    print("Insira sua fruta preferida");
    String? fruta = stdin.readLineSync();

    frutas.add(fruta!);
  }
  print("Suas frutas favoritas são: $frutas");
}