class Fruta{
  String nome;
  double peso;
  String cor;
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;

  Fruta(this.nome, this.peso, this.sabor, this.cor, this.diasDesdeColheita, {this.isMadura});

  estaMadura(int diasParaMadura){
      isMadura = diasDesdeColheita >= diasParaMadura;
      print("A sua $nome foi colhida a $diasDesdeColheita dias e precisa de $diasParaMadura para poder comer.\nEla está maduras = $isMadura");
  }
}

class Alimento{
  String nome;
  double peso;
  String cor;

  Alimento(this.nome, this.peso, this.cor);
}

class Legumes{
  String nome;
  double peso;
  String cor;
  bool? isPrecisaCozinhar;

  Legumes(this.nome, this.peso, this.cor);
}

class Citricas{
  String nome;
  double peso;
  String cor;
  int diasDesdeColheita;
  bool? isMadura;
  double nivelAzedo;

  Citricas(this.nome, this.peso, this.cor, this.diasDesdeColheita, this.isMadura, this.nivelAzedo);
}

class Nozes{
  String nome;
  double peso;
  String cor;
  int diasDesdeColheita;
  bool? isMadura;
  double porcentagemDeOleoNatural;

  Nozes(this.nome, this.peso, this.cor, this.diasDesdeColheita, this.porcentagemDeOleoNatural);

}

bool funcEstaMadura(int dias) {
  if (dias >= 30) {
    return true;
  } else {
    return false;
  }
}

mostrarMadura(String nome, int dias, {required String cor}) {
  if (dias >= 30) {
    print("A $nome está madura.");
  } else {
    print("A $nome não está madura.");
  }

  if (cor != null) {
    print("A $nome é $cor.");
  }
}

int funcQuantosDiasMadura(int dias) {
  int diasParaMadura = 30;
  int quantosDiasFaltam = diasParaMadura - dias;
  return quantosDiasFaltam;
}
