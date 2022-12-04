import 'package:alura_estilizando_reproduzindo_layouts/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //estilizando container
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: ThemeColors.headerGradient,
        ),
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(10),
        ),
      ),

      child:
          //colocando espaço entre a linha
          Padding(
        //padding tamanho da esquerda para direita
        padding: const EdgeInsets.fromLTRB(16.0, 80.0, 16.0, 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            /*  Text(
              'R\$1000.00',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ), */
            Text.rich(
              TextSpan(
                text: 'R\$',
                children: <TextSpan>[
                  TextSpan(
                    text: '1000.00',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ],
              ),
            ),
            const Text("Balanço disponível"),
            const Icon(
              Icons.account_circle,
              size: 42,
            ),
          ],
        ),
      ),
    );
  }
}
