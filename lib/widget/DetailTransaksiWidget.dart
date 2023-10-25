import 'package:flutter/material.dart';

import 'DoubleTextWidget.dart';

class DetailTransaksiWidget extends StatelessWidget {
  const DetailTransaksiWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.05,
          child: Center(
              child: Row(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 3),
                child: Text(
                  "Detail Transaction",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          )),
        ),
        Expanded(
          child: Container(
            child: Column(
              children: [
                DoubleTextWidget(kunci: "Ayam Goreng",value: "IDR 198.000",),
                DoubleTextWidget(kunci: "Driver",value: "IDR 50.000",),
                DoubleTextWidget(kunci: "Pajak",value: "IDR 10.000",),
                DoubleTextWidget(kunci: "Total Harga",value: "IDR 300.000",),
                ],
                
            ),
          ),
        )
      ],
    );
  }
}