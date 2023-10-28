import 'package:flutter/material.dart';
import 'package:food_app/Model/ListModel.dart';
import 'package:food_app/page/PembayaranPage.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class DetailMakananPage extends StatelessWidget {
  final String namaMakanan;
  final double rating;
  final String deskripsi;
  final String bahanMakanan;
  final String gambarMakanan;

  int harga;
  DetailMakananPage(
      {super.key,
      required this.bahanMakanan,
      required this.deskripsi,
      required this.gambarMakanan,
      required this.harga,
      required this.namaMakanan,
      required this.rating});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: null,
        body: ListView(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.6,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://foto.co.id/wp-content/uploads/2016/12/Teknik-foto-makanan.jpg"),
                            fit: BoxFit.cover)),
                  ),
                  Positioned(
                    bottom: 1,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.5,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12)),
                      child: Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height * 0.12,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.35,
                                  height:
                                      MediaQuery.of(context).size.height * 0.12,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        namaMakanan,
                                        style: TextStyle(fontSize: 20),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.2,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.02,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        "asset/stars.png"))),
                                          ),
                                          Text(rating.toString())
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.35,
                                    height: MediaQuery.of(context).size.height *
                                        0.12,
                                    child: Consumer<ListMakananLokal>(
                                      builder: (context, value, child) {
                                        return Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.1,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.05,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(8)),
                                              child: ElevatedButton(
                                                  style: ButtonStyle(
                                                      shape: MaterialStatePropertyAll(
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8))),
                                                      side:
                                                          MaterialStatePropertyAll(
                                                              BorderSide(
                                                                  strokeAlign:
                                                                      1)),
                                                      backgroundColor:
                                                          MaterialStatePropertyAll(
                                                              Colors.white)),
                                                  onPressed: () {
                                                    value.Decrement();
                                                  },
                                                  child: Text(
                                                    "-",
                                                    style: TextStyle(
                                                        fontSize: 25,
                                                        color: Colors.black),
                                                  )),
                                            ),
                                            Text(value.counterMakanan
                                                .toString()),
                                            Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.1,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.05,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(8)),
                                              child: ElevatedButton(
                                                  style: ButtonStyle(
                                                      shape: MaterialStatePropertyAll(
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8))),
                                                      side:
                                                          MaterialStatePropertyAll(
                                                              BorderSide(
                                                                  strokeAlign:
                                                                      1)),
                                                      backgroundColor:
                                                          MaterialStatePropertyAll(
                                                              Colors.white)),
                                                  onPressed: () {
                                                    value.Increment();
                                                  },
                                                  child: Text(
                                                    "+",
                                                    style: TextStyle(
                                                        fontSize: 25,
                                                        color: Colors.black),
                                                  )),
                                            ),
                                          ],
                                        );
                                      },
                                    ))
                              ],
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height * 0.12,
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.vertical,
                                child: Text(
                                  deskripsi,
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.grey),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height * 0.12,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "Ingredient : ",
                                        style: TextStyle(fontSize: 18),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8),
                                      child: Text(
                                        bahanMakanan,
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 16),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Expanded(
                              child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.5,
                                  height:
                                      MediaQuery.of(context).size.height * 0.12,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              "Total Price",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.grey),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10),
                                            child: Consumer<ListMakananLokal>(
                                              builder:
                                                  (context, value, child) =>
                                                      Text(
                                                "IDR ${value.hargaMakanan(harga)}",
                                                style: TextStyle(fontSize: 16),
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  height:
                                      MediaQuery.of(context).size.height * 0.08,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Consumer<ListMakananLokal>(
                                    builder: (context, value, child) {
                                      return ElevatedButton(
                                          style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStatePropertyAll(
                                                      Colors.red),
                                              shape: MaterialStatePropertyAll(
                                                  RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12)))),
                                          onPressed: () {
                                            Navigator.push(context,
                                                MaterialPageRoute(
                                              builder: (context) {
                                                return PembayaranPage(
                                                  gambarMakanan: gambarMakanan,
                                                  namaMakanan: namaMakanan,
                                                  totalHarga: value.hargaMakanan(harga),
                                                  totalItem: value.counterMakanan,
                                                );
                                              },
                                            ));
                                          },
                                          child: Text("Order Now"));
                                    },
                                  ),
                                )
                              ],
                            ),
                          ))
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 10,
                    top: 20,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.1,
                      height: MediaQuery.of(context).size.height * 0.05,
                      child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.red)),
                          onPressed: () {
                            Provider.of<ListMakananLokal>(context,
                                    listen: false)
                                .setUlangCounter();
                            Navigator.pop(context);
                          },
                          child: Icon(Icons.arrow_back_ios)),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
