enum Coins {
  BRL,
  USD,
  GBP,
  JPY,
  ARS,
}

class CoinObject {
  String nome;
  String sigla;
  String preco;

  CoinObject({
    required this.nome,
    required this.sigla,
    required this.preco,
  });
}
