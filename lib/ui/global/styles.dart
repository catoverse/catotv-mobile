import 'package:flutter/material.dart';

final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 50),
        padding: const EdgeInsets.symmetric(horizontal: 16))
    .copyWith(
  overlayColor: MaterialStateProperty.all(Colors.white10),
);

final BoxDecoration textFieldStyle = BoxDecoration(
    color: Colors.black.withOpacity(0.05),
    borderRadius: BorderRadius.circular(5),
    border: Border.all(color: Colors.black.withOpacity(0.2)));
