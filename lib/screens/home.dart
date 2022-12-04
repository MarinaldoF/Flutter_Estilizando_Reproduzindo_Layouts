import 'package:alura_estilizando_reproduzindo_layouts/components/sections/account_actions.dart';
import 'package:alura_estilizando_reproduzindo_layouts/components/sections/header.dart';
import 'package:alura_estilizando_reproduzindo_layouts/components/sections/pontos_conta.dart';
import 'package:alura_estilizando_reproduzindo_layouts/components/sections/recent_activity.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const <Widget>[
            Header(),
            RecentActivity(),
            AccountActions(),
            PontosConta(),
          ],
        ),
      ),
    );
  }
}
