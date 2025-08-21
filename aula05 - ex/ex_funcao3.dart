import 'dart:io';

void main(){
  print("Insira a temperatura em celcius: ");
  String? entrada = stdin.readLineSync();
  double celcius = double.parse(entrada!);

  print("$celcius°C equivale a ${celciusParaFahrenheit(celcius)}°F");

}

double celciusParaFahrenheit(double celcius){
  return ((9/5)*celcius)+32;
}