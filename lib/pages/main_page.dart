import 'package:conversor/data/coins.dart';
import 'package:conversor/estilos/colors.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<Coins> selectedCoins = [];

  @override
  Widget build(BuildContext context) {
    const coins = Coins.values;
    const coinsSelected = Coins.ARS;
    final filteredCoins = coins.where((coin) => coin != coinsSelected).toList();

    return const Scaffold(
      backgroundColor: Colors.amber,
    );
  }
}

class ConversorPage extends StatefulWidget {
  const ConversorPage({
    Key? key,
  }) : super(key: key);

  @override
  State<ConversorPage> createState() => _ConversorPageState();
}

class _ConversorPageState extends State<ConversorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorApp.backgroundColor,
        appBar: AppBar(
          backgroundColor: ColorApp.backgroundColor,
          centerTitle: true,
          elevation: 0,
        ),
        body: Column(
          children: const [
            Text('Cotação',
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal)),
          ],
        ));
  }
}

class ResultPage extends StatefulWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('ResultPage'));
  }
}
