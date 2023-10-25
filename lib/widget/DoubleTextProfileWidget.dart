import 'package:flutter/material.dart';

class DoubleTextProfileWidget extends StatelessWidget {
  final String judul;
  final Icon icons;
  const DoubleTextProfileWidget({
    required this.icons,
    required this.judul,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            judul,
            style: TextStyle(fontSize: 18),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: icons,
        )
      ],
    );
  }
}
