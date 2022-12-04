import 'package:alura_estilizando_reproduzindo_layouts/components/box_card.dart';
import 'package:alura_estilizando_reproduzindo_layouts/components/sections/header.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const <Widget>[
          Header(),
          BoxCard(
            boxContent: Text('Ola mundo'),
          ),
        ],
      ),
    );
  }
}
