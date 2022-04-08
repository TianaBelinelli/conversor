import 'package:conversor/estilos/colors.dart';
import 'package:conversor/pages/home_page.dart';
import 'package:conversor/pages/page_conversor.dart';
import 'package:conversor/pages/result_conversao.dart';
import 'package:flutter/material.dart';

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
            HomePage(),
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
