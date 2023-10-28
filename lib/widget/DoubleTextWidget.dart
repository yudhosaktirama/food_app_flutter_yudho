import 'package:flutter/material.dart';




class DoubleTextWidget extends StatelessWidget {
  final String kunci;
  final String value;
  DoubleTextWidget({
    required this.kunci,
    required this.value,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(kunci),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(value),
        )
      ],
    );
  }
}
