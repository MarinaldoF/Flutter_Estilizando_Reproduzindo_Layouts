import 'package:alura_estilizando_reproduzindo_layouts/components/box_card.dart';
import 'package:alura_estilizando_reproduzindo_layouts/components/color_dot.dart';
import 'package:alura_estilizando_reproduzindo_layouts/components/content_division.dart';
import 'package:alura_estilizando_reproduzindo_layouts/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class PontosConta extends StatelessWidget {
  const PontosConta({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Text('Pontos da conta',
                style: Theme.of(context).textTheme.titleMedium),
          ),
          const BoxCard(boxContent: _PontosContaContent()),
        ],
      ),
    );
  }
}

class _PontosContaContent extends StatelessWidget {
  const _PontosContaContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Pontos Totais:'),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '3000',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
        Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
          child: ContentDivision(),
        ),
        Text(
          'Objetivos:',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 4),
                child: ColorDot(color: ThemeColors.recentActivity['spent']),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Entrega grátis: 15000pts'),
                ],
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 4),
                child: ColorDot(color: ThemeColors.recentActivity['income']),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Um mês de streaming: 30000 pts'),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
