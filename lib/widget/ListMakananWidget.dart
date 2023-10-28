import 'package:flutter/material.dart';
import 'package:food_app/Model/ListModel.dart';
import 'package:food_app/page/DetailMakananPage.dart';
import 'package:provider/provider.dart';

class ListMakananWidget extends StatelessWidget {
  const ListMakananWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<ListMakananLokal>(
      builder: (context, value, child) {
        return ListView.builder(
          itemCount: value.lisNewTaste.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ModelList(value: value, index: index,konteks: context),
            );
          },
        );
      },
    );
  }
}

class ModelList extends StatelessWidget {
  final BuildContext konteks;
  final ListMakananLokal value;
  final int index;
  const ModelList({
    required this.konteks,
    required this.value,
    required this.index,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.3,
      height: MediaQuery.of(context).size.height * 0.15,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(konteks, MaterialPageRoute(
                builder: (konteks) {
                  return DetailMakananPage(
                    bahanMakanan: value.lisNewTaste[index].bahanMakanan,
                    deskripsi: value.lisNewTaste[index].deskripsi,
                    harga: value.lisNewTaste[index].harga,
                    namaMakanan: value.lisNewTaste[index].nama,
                    rating: value.lisNewTaste[index].rating,
                    gambarMakanan: value.lisNewTaste[index].gambar,
                  );
                },
              ));
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.2,
                height: MediaQuery.of(context).size.height * 0.15,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: NetworkImage(value.lisNewTaste[index].gambar),
                        fit: BoxFit.fill)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.32,
              height: MediaQuery.of(context).size.height * 0.15,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text(
                          value.lisNewTaste[index].nama,
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                          "IDR ${value.lisNewTaste[index].harga}",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.24,
              height: MediaQuery.of(context).size.height * 0.15,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.16,
                    height: MediaQuery.of(context).size.height * 0.05,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("asset/stars.png"))),
                  ),
                  Text(value.lisNewTaste[index].rating.toString())
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
