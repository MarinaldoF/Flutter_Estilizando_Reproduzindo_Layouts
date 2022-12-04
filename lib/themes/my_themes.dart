import 'package:alura_estilizando_reproduzindo_layouts/themes/theme_colors.dart';
import 'package:flutter/material.dart';

ThemeData MyTheme = ThemeData(
  primarySwatch: ThemeColors.primaryColor,
  primaryColor: ThemeColors.primaryColor,
  brightness: Brightness.dark,

  //os textos por padrão herda do bodyMedium, então o que for definido aqui vai para todos
  textTheme: const TextTheme(
    //principal, pega por padrão
    bodyMedium: TextStyle(fontSize: 16),
    //secundária, tem que especificar caminho
    bodyLarge: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.bold,
    ),
  ),
);
