import 'package:flutter/material.dart';
import 'package:flutter_starter/styles/colors.dart';

final ButtonStyle primaryButtonStyle = FilledButton.styleFrom(
  backgroundColor: colorPrimary,
  foregroundColor: Colors.white,
  minimumSize: const Size(250, 50),
  textStyle: const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
  ),
);

final ButtonStyle secondaryButtonStyle = primaryButtonStyle.copyWith(
    backgroundColor: MaterialStatePropertyAll(colorSecondary),
    foregroundColor: MaterialStatePropertyAll(colorPrimary));
