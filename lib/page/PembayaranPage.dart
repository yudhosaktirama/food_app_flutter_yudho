import 'package:flutter/material.dart';
import 'package:food_app/widget/AppBarCustom.dart';
import 'package:food_app/widget/DoubleTextWidget.dart';

import '../widget/DetailTransaksiWidget.dart';
import '../widget/ItemOrderWidget.dart';

class PembayaranPage extends StatelessWidget {
  const PembayaranPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: null,
        body: ListView(children: [
          Column(
            children: [
              AppBarCustom(konteks: context),
              ItemOrderWidget(),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 1),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.26,
                  child: DetailTransaksiWidget(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.06,
                        child: Center(
                            child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Deliver To",
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
                            DoubleTextWidget(kunci: "Name", value: "Yudho"),
                            DoubleTextWidget(
                                kunci: "Phone no", value: "08813546282"),
                            DoubleTextWidget(
                                kunci: "Address",
                                value: "JL Raya Ponorogo Nomor 20"),
                            DoubleTextWidget(kunci: "House No", value: "20"),
                            DoubleTextWidget(kunci: "City", value: "Madiun"),
                          ],
                        ),
                      ))
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.height * 0.06,
                    child: ElevatedButton(
                      style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.red)),
                      onPressed: (){}, child: Text("Checkout Now")),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              )
            ],
          ),
        ]),
      ),
    );
  }
}
