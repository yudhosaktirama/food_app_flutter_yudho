import 'package:flutter/material.dart';


class HeadlineMakananWidget extends StatelessWidget {
  const HeadlineMakananWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.3,
        child: ListView.builder(
          itemCount: 6,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(6.0),
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.6,
                  height: MediaQuery.of(context).size.height * 0.1,
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.6,
                        height:
                            MediaQuery.of(context).size.height * 0.18,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://awsimages.detik.net.id/community/media/visual/2021/04/22/5-makanan-enak-dari-indonesia-dan-malaysia-yang-terkenal-enak-5.jpeg?w=600&q=90'),
                                fit: BoxFit.fill)),
                      ),
                      Expanded(
                          child: Container(
                        child: Column(
                          children: [
                            Container(
                                width:
                                    MediaQuery.of(context).size.width *
                                        0.6,
                                height:
                                    MediaQuery.of(context).size.height *
                                        0.05,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 6),
                                  child: Text("Nasi Goreng",style: TextStyle(
                                    fontSize: 18
                                  ),),
                                )),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.6,
                              height: MediaQuery.of(context).size.height * 0.04,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width * 0.3,
                                    height: MediaQuery.of(context).size.height * 0.04,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(image: AssetImage("asset/stars.png"))

                                    ),
                                  ),
                                  Text("4.5")
                                ],
                              ),
                            )
                          ],
                        ),
                      ))
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}