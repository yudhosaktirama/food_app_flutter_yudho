import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:food_app/Model/ListModel.dart';
import 'package:food_app/State_Management/FirebaseAuth.dart';
import 'package:provider/provider.dart';

class InProgressWidget extends StatelessWidget {
  InProgressWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ListMakananLokal>(
      builder: (context, value, child) {
        return StreamBuilder(
            stream:
                FirebaseFirestore.instance.collection('makanan').snapshots(),
            builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
              if (streamSnapshot.hasData) {
                return ListView.builder(
                  itemCount: streamSnapshot.data!.docs.length,
                  itemBuilder: (context, index) {
                    final DocumentSnapshot documentSnapshot =
                        streamSnapshot.data!.docs[index];
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.1,
                        height: MediaQuery.of(context).size.height * 0.15,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.25,
                                height:
                                    MediaQuery.of(context).size.height * 0.15,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            value.lisProgress[index].gambar),
                                        fit: BoxFit.cover)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.4,
                                height:
                                    MediaQuery.of(context).size.height * 0.15,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text(
                                              value.lisProgress[index].nama),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10),
                                          child: Text(
                                              "${value.lisProgress[index].totalBeli} Item"),
                                        ),
                                        Text(
                                            "IDR ${value.lisProgress[index].totalHarga}")
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                                child: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Container(
                                child: ElevatedButton(
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStatePropertyAll(
                                                Colors.white)),
                                    onPressed: () {
                                      Future<void> hapusMakanan() async {
                                        await FirebaseFirestore.instance
                                            .collection('makanan')
                                            .doc(documentSnapshot.id)
                                            .delete();
                                      }

                                      hapusMakanan();
                                    },
                                    child:
                                        Icon(color: Colors.red, Icons.delete)),
                              ),
                            ))
                          ],
                        ),
                      ),
                    );
                  },
                );
              } else {
                return CircularProgressIndicator();
              }
            });
      },
    );
  }
}
