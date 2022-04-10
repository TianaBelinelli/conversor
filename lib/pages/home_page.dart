import 'package:conversor/UI/coin_card_widget.dart';

import 'package:conversor/data/coins.dart';
import 'package:conversor/estilos/colors.dart';
import 'package:conversor/pages/main_page.dart';

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
        ),
        const MainPage(),
      ]),
    );
  }
}

class CoinsConversor extends StatefulWidget {
  const CoinsConversor({
    Key? key,
  }) : super(key: key);

  @override
  _CoinsConversorState createState() => _CoinsConversorState();
}

class _CoinsConversorState extends State<CoinsConversor> {
  final currentPage = 0;
  late PageController pc;

  @override
  void initState() {
    super.initState();
    pc = PageController(initialPage: currentPage);
  }

  @override
  build(BuildContext context) {
    return Stack(children: [
      Scaffold(
        body: PageView(
          scrollDirection: Axis.horizontal,
          controller: pc,
          children: const [
            MainPage(),
            ConversorPage(),
            ResultPage(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentPage,
          items: const [],
          onTap: (currentPage) {
            pc.animateToPage(currentPage,
                duration: const Duration(milliseconds: 400),
                curve: Curves.ease);
          },
        ),
      ),
      Container(
        alignment: const Alignment(168, 882),
        height: 24,
        width: 24,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: ColorApp.blue,
        ),
      ),
      Container(
        alignment: const Alignment(202, 882),
        height: 24,
        width: 24,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: ColorApp.blue,
        ),
      ),
      Container(
        alignment: const Alignment(236, 882),
        height: 24,
        width: 24,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: ColorApp.blue,
        ),
      ),
    ]);
  }
}
