import "dart:io"; //Comando para importar as bibliotecas DART

void main(){ // Função principal, sem ela não funciona o código

    print("Digite sua idade: "); // Fala o que quer

    String? entrada = stdin.readLineSync(); // Dart só le dados String...

    int idade = int.parse(entrada!); // converte a entrada em int e só vai ser convertida se não for nula, por isso o !

    if(idade>=18){
      print("Você pode dirigir!!");
    }else if(idade ==1){
      print("Meu Deus, nem pense em dirigir");
    }else{
      print("Você não pode dirigir, pegue um uber");
    }
}