import 'package:flutter/material.dart';



class ItemOrderWidget extends StatelessWidget {
  const ItemOrderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.18,
        
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.7,
                height: MediaQuery.of(context).size.height * 0.2,
            
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text("Item Ordered",style: TextStyle(
                          fontSize: 18
                        ),),
                      ],
                    ),
                    Expanded(
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.7,
                        height:
                            MediaQuery.of(context).size.height * 0.1,
                     
                        child: Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.2,
                              height: MediaQuery.of(context).size.height * 0.1,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(image: NetworkImage("https://i.pinimg.com/originals/94/03/bf/9403bf0a4317828cc0d50e30d493c189.jpg"),fit: BoxFit.cover)
                              ),
                            ),
                            Expanded(child: Container(
                    
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text("Ayam Goreng",style: TextStyle(
                                          fontSize: 18
                                        ),),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 10),
                                        child: Text("IDR 198.000",style: TextStyle(
                                          color: Colors.grey
                                        ),),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.2,
              height: MediaQuery.of(context).size.height * 0.2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("14 Item",style: TextStyle(
                    color: Colors.grey
                  ),)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}