import 'package:conversor/data/coins.dart';

class CoinsMapper {
  static String toPtbrCoinsString(Coins coin) {
    switch (coin) {
      case Coins.BRL:
        return 'Real';

      case Coins.USD:
        return 'Dólar Americano';
      case Coins.GBP:
        return 'Libra Esterlina';
      case Coins.JPY:
        return 'Iene';
      case Coins.ARS:
        return 'Peso Argentino';
      default:
        return "";
    }
  }
}
