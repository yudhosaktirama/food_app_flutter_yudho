import 'package:flutter/material.dart';

import 'DoubleTextWidget.dart';

class DetailTransaksiWidget extends StatelessWidget {
  final int totalHarga;
  final int totalBayar;
  DetailTransaksiWidget({
    required this.totalBayar,
    required this.totalHarga,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.05,
          child: const Center(
              child: Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 3),
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
                DoubleTextWidget(
                  kunci: "Ayam Goreng",
                  value: "IDR $totalHarga",
                ),
                DoubleTextWidget(
                  kunci: "Driver",
                  value: "IDR 10000",
                ),
                DoubleTextWidget(
                  kunci: "Pajak",
                  value: "IDR 10000",
                ),
                DoubleTextWidget(
                  kunci: "Total Harga",
                  value: "IDR $totalBayar",
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
