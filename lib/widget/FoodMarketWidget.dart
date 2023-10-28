import 'package:flutter/material.dart';
import 'DoubleTextProfileWidget.dart';

class FoodMarketWidget extends StatelessWidget {
  const FoodMarketWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          DoubleTextProfileWidget(
            icons: Icon(Icons.arrow_forward_ios),
            judul: "Rate App",
          ),
          DoubleTextProfileWidget(
            icons: Icon(Icons.arrow_forward_ios),
            judul: "Help Center",
          ),
          DoubleTextProfileWidget(
            icons: Icon(Icons.arrow_forward_ios),
            judul: "Privacy & Policy",
          ),
          DoubleTextProfileWidget(
            icons: Icon(Icons.arrow_forward_ios),
            judul: "Terms And Conditions",
          ),
        ],
      ),
    );
    ;
  }
}
