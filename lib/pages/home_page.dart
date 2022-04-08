import 'package:conversor/UI/coin_card_widget.dart';

import 'package:conversor/data/coins.dart';
import 'package:conversor/estilos/colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Coins> selectedCoins = [];

  @override
  Widget build(BuildContext context) {
    const coins = Coins.values;
    const coinsSelected = Coins.ARS;
    final filteredCoins = coins.where((coin) => coin != coinsSelected).toList();

    return Scaffold(
      backgroundColor: ColorApp.backgroundColor,
      appBar: AppBar(
        backgroundColor: ColorApp.backgroundColor,
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(children: [
        Text('Conversor Moedas',
            style: TextStyle(
                color: ColorApp.blue,
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal)),
        Text(
          'Selecione uma moeda base para conversões',
          style: TextStyle(
              color: ColorApp.white,
              fontSize: 18,
              fontWeight: FontWeight.normal),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: filteredCoins.length,
            itemBuilder: (context, index) {
              final coin = filteredCoins[index];
              return CoinsCardWidget(
                  coin: coin,
                  selected: selectedCoins.contains(coin),
                  onItemClicked: () {
                    setState(() {
                      if (selectedCoins.contains(coin)) {
                        selectedCoins.remove(coin);
                      } else {
                        selectedCoins.add(coin);
                      }
                    });
                  });
            },
          ),
        )
      ]),
    );
  }
}
