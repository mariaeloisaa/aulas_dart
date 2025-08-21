import 'dart:io';

void main(){
  print("Digite sua nota (0-5): ");
  String? entrada = stdin.readLineSync();

  int nota = int.parse(entrada!);

  switch (nota){

    case 0:
      print("Sua nota é $nota. Senhor...");
      break;

    case 1:
      print("Sua nota é $nota. Péssimo...");
      break;

    case 2:
      print("Sua nota é $nota. Triste...");
      break;

    case 3:
      print("Sua nota é $nota. Mediano, melhore...");
      break;  

    case 4:
      print("Sua nota é $nota. Está bom, mas deve melhorar.");
      break;  

    case 5:
      print("Sua nota é $nota. Ótimo");
      break;      

    default:
      print("Digite uma nota válida (0-5)");
      break;

  }

}