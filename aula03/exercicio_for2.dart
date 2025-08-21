import 'dart:io';

void main(){
  List<String> nomes = [
    "Allison",
    "Brunna",
    "Deborah", 
    "Geovana", 
    "Jiulia",
    "Jonathan", 
    "Larissa",
    "Lucas", 
    "Maria Eduarda", 
    "Maria Eloisa",
    "Nicole Camacho", 
    "Rafael Moreira", 
    "Vinicius"
    ];

  List<String> presentes = [];
  int contador = 0;
  

  nomes.forEach((String i){

    print("$i está na presente? (sim/nao)");
    String? resposta = stdin.readLineSync();

    if(resposta == "sim"){
      contador++;
      presentes.add(i);
    }
  });

  print("Quandidade de pessoas presentes: $contador");
  print("São elas: $presentes");
}

