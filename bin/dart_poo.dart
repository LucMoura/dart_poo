import 'package:dart_poo/dart_poo.dart';

void main() {
  Fruta fruta01 = Fruta("Laranja", 80.1, "doce", "Laranja", 3);


  
  if (fruta01.diasDesdeColheita >= 30) {
    fruta01.isMadura = true;
  } else {
    fruta01.isMadura = false;
  }
}


