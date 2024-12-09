class Alimento{
  String nome;
  double peso;
  String cor;

  Alimento(this.nome, this.peso, this.cor);

  void printALimento(){
    print("Este(a) $nome pesa $peso e tem a cor $cor");
  }
}
class Fruta extends Alimento{

  String sabor;
  int diasDesdeColheita;
  bool? isMadura;

  Fruta(String nome, double peso, String cor, this.sabor, this.diasDesdeColheita, {this.isMadura}): super(nome, peso, cor);

  estaMadura(int diasParaMadura){
      isMadura = diasDesdeColheita >= diasParaMadura;
      print("A sua $nome foi colhida a $diasDesdeColheita dias e precisa de $diasParaMadura para poder comer.\nEla está maduras = $isMadura");
  }

  void fazerSuco(){
    print("Você fez um ótimo suco de $nome");
  }
}
class Legumes extends Alimento{
  bool isPrecisaCozinhar;

  Legumes(String nome, double peso, String sabor, this.isPrecisaCozinhar) : super(nome,peso,sabor);

  void cozinhar(){
    if(isPrecisaCozinhar){
      print("Pronto, o(a) $nome esta cozinhado");
    }else{
      print("Nahhh coma cru");
    }
  }
  
}

class Citricas extends Fruta{
  double nivelAzedo;

  Citricas(String nome, double peso, String sabor, String cor, int diasDesdeColheita, bool isMadura, this.nivelAzedo): super(nome, peso, sabor, cor, diasDesdeColheita);

  void existeRefri(bool existe){
    if(existe){
      print("Existe refri de $nome");
    }else{
    print("Não existe refri de $nome");

    }
  }
}

class Nozes extends Fruta{

  double porcentagemDeOleoNatural;

  Nozes(String nome, double peso, String cor, int diasDesdeColheita, String sabor,  this.porcentagemDeOleoNatural) : super(nome, peso, cor, sabor, diasDesdeColheita);

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
