import "dart:io";

void main(){

    print("Digite sua idade: ");
    String? entrada = stdin.readLineSync(); 
    int idade = int.parse(entrada!); 

    int idade_futura = idade+1;
    
    print("Idade atual: $idade, Idade no próximo ano: $idade_futura");
}