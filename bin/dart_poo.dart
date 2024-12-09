import 'package:dart_poo/dart_poo.dart';

void main() {
  Legumes mandioca01 = Legumes("Mandioca", 350, "Agridoce", true);
  Fruta banana01 = Fruta("Banana", 500, "Amarela", "Doce", 3);
  Nozes macadamia01 = Nozes("Macadamia", 200, "Amarelo e marrom", 12, "Amanteigado", 75);
  Citricas limao01 = Citricas("Limão", 400, "Azedo", "Verde", 4, false, 90);

  mandioca01.cozinhar();
  banana01.estaMadura(5);
  limao01.existeRefri(true);


}


