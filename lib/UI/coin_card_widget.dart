import 'package:conversor/UI/utils/coins_mapper.dart';
import 'package:conversor/data/coins.dart';
import 'package:conversor/estilos/colors.dart';
import 'package:flutter/material.dart';

class CoinsCardWidget extends StatefulWidget {
  final Coins coin;
  final bool selected;
  final VoidCallback onItemClicked;

  const CoinsCardWidget({
    Key? key,
    required this.coin,
    required this.selected,
    required this.onItemClicked,
  }) : super(key: key);

  @override
  State<CoinsCardWidget> createState() => _CoinsCardWidgetState();
}

class _CoinsCardWidgetState extends State<CoinsCardWidget> {
  get child => null;

  @override
  Widget build(BuildContext context) {
    return Container(
        // ignore: prefer_const_constructors
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            8.0,
          ),
          color: ColorApp.grey,
        ),
        margin: const EdgeInsets.all(20),
        height: 74.0,
        width: 364.0,
        child: ListTile(
          onTap: widget.onItemClicked,
          leading: const Icon(Icons.attach_money_sharp),
          title: Text(
            CoinsMapper.toPtbrCoinsString(widget.coin),
            style: TextStyle(color: ColorApp.greytext, fontSize: 18),
          ),
          selected: false,
          selectedTileColor: ColorApp.blue,
        ));
  }
}
