import 'package:flutter/material.dart';

class GraficasView extends StatelessWidget {
  const GraficasView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: 
      Text(
                    "Gráficas",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
    );
  }
}