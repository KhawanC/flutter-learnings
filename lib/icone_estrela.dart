import 'package:flutter/material.dart';

class IconeEstrela extends StatelessWidget {
  const IconeEstrela({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 3),
      child: const Icon(
        Icons.star,
        size: 15,
      ),
    );
  }
}