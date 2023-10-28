import 'package:flutter/material.dart';
import 'package:food_app/Model/ListModel.dart';
import 'package:provider/provider.dart';

class InProgressWidget extends StatelessWidget {
  const InProgressWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ListMakananLokal>(
      builder: (context, value, child) {
        return ListView.builder(
        itemCount: value.lisProgress.length,
        itemBuilder: (context, index) {
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
                      height: MediaQuery.of(context).size.height * 0.15,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                              image: NetworkImage(
                                  value.lisProgress[index].gambar),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(value.lisProgress[index].nama),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Text("${value.lisProgress[index].totalBeli} Item"),
                              ),
                              Text("IDR ${value.lisProgress[index].totalHarga}")
                            ],
                          )
                        ],
                      ),
                    ),
                  ))
                ],
              ),
            ),
          );
        },
      );
      }, 
    );
  }
}
