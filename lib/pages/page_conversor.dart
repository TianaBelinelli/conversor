import 'package:conversor/estilos/colors.dart';
import 'package:flutter/material.dart';

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
