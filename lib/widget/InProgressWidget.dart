import 'package:flutter/material.dart';

class InProgressWidget extends StatelessWidget {
  const InProgressWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 8,
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
                                "https://www.blibli.com/friends-backend/wp-content/uploads/2023/06/B500569-Cover-Makanan-Khas-Turki-scaled.jpg"),
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
                              child: Text("Avosalado"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Text("3 Item"),
                            ),
                            Text("IDR 20.000")
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
  }
}
