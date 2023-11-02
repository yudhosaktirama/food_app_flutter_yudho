import 'package:flutter/material.dart';
import 'package:food_app/Model/ListModel.dart';
import 'package:food_app/State_Management/FirebaseAuth.dart';
import 'package:provider/provider.dart';

class EditPage extends StatelessWidget {
  final String id;
  final int counter;
  final int hargaSatuan;
  final int indexku;
  const EditPage(
      {required this.counter,
      required this.id,
      required this.hargaSatuan,
      required this.indexku,
      super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Provider.of<ListMakananLokal>(context, listen: false)
                    .setUlangCounterUpdate(counter);
                Navigator.pop(context);
              },
              icon: Icon(color: Colors.black, Icons.arrow_back_ios)),
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            "Edit Pesananmu",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.2,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          child: Consumer<ListMakananLokal>(
                            builder: (context, value, child) {
                              return Container(
                                width: MediaQuery.of(context).size.width * 0.3,
                                height:
                                    MediaQuery.of(context).size.height * 0.2,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            value.lisProgress[indexku].gambar),
                                        fit: BoxFit.cover)),
                              );
                            },
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(child: Consumer<ListMakananLokal>(
                          builder: (context, value, child) {
                            return Column(
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.55,
                                  height:
                                      MediaQuery.of(context).size.width * 0.08,
                                  child: Center(
                                    child:
                                        Text(value.lisProgress[indexku].nama),
                                  ),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.55,
                                  height:
                                      MediaQuery.of(context).size.height * 0.1,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.12,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.06,
                                        child: ElevatedButton(
                                            style: ButtonStyle(
                                                elevation:
                                                    MaterialStatePropertyAll(
                                                        10),
                                                backgroundColor:
                                                    MaterialStatePropertyAll(
                                                        Colors.white)),
                                            onPressed: () {
                                              value.updateItemDCT(counter);
                                            },
                                            child: Center(
                                                child: Icon(
                                                    color: Colors.black,
                                                    Icons.remove))),
                                      ),
                                      Card(
                                        elevation: 10,
                                        child: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.12,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.06,
                                          color: Colors.white,
                                          child: Center(
                                            child: Text(
                                                value.counterupdate.toString()),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.12,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.06,
                                        child: ElevatedButton(
                                            style: ButtonStyle(
                                                elevation:
                                                    MaterialStatePropertyAll(
                                                        10),
                                                backgroundColor:
                                                    MaterialStatePropertyAll(
                                                        Colors.white)),
                                            onPressed: () {
                                              value.updateItemINC(counter);
                                            },
                                            child: Center(
                                                child: Icon(
                                                    color: Colors.black,
                                                    Icons.add))),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.55,
                                  height:
                                      MediaQuery.of(context).size.height * 0.05,
                                  child: Center(
                                    child: Text(
                                        "Perubahan Harga : IDR ${value.updatehargaMakanan(hargaSatuan)}"),
                                  ),
                                )
                              ],
                            );
                          },
                        )),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Consumer<ListMakananLokal>(
                builder: (context, value, child) {
                  return Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.height * 0.08,
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.red),
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12)))),
                        onPressed: () {
                          FirebaseMakanan().updatePesanan(value.counterupdate,
                              value.updatehargaMakanan(hargaSatuan), id);
                        },
                        child: Text("Update Pesananmu")),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
