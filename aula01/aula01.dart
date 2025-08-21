import "dart:io"; //Comando para importar as bibliotecas DART

void main(){ // Função principal, sem ela não funciona o código
    print("Digite o seu nome: "); // Fala o que quer
    String? nome = stdin.readLineSync(); // Cria a variável e guarda os dados digitados. O ponto de interrogação indica um not null, para que não venha fazia. É igual Java. 
    print("Olá, seja bem-vindo! Seu nome é $nome"); // Printou o nome (;
}