import 'dart:io';
void main(){
  Produto produto1 = Produto("Banana", 8.50, 2);

  produto1.subtrair_estoque();
  produto1.subtrair_estoque();
  produto1.subtrair_estoque();

}

class Produto {
  String nome = "";
  double preco = 0.0;
  int estoque = 0;

  Produto(this.nome, this.preco, this.estoque);

  void subtrair_estoque(){
    if(estoque>0){
      estoque--;
      print("1 $nome foi comprado, restam $estoque");
    } else{
      print("Estoque esgotado para o produto $nome");
    }
  }
}