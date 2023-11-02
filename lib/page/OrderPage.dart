import 'package:flutter/material.dart';
import 'package:food_app/Model/ListModel.dart';
import 'package:food_app/State_Management/FirebaseAuth.dart';
import 'package:food_app/State_Management/tabControllerState.dart';
import 'package:food_app/widget/InProgressWidget.dart';
import 'package:food_app/widget/PostOrderWidget.dart';
import 'package:provider/provider.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> with TickerProviderStateMixin {
  TabController? orderTabControler;
  @override
  void initState() {
    super.initState();
    orderTabControler = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.12,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 8),
                        child: Text(
                          "Your Order",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Text("Wait For The Best Meal"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Container(
                  child: TabBar(
                      indicatorPadding: EdgeInsets.symmetric(horizontal: 50),
                      labelColor: Colors.black,
                      labelStyle: TextStyle(color: Colors.black),
                      indicatorColor: Colors.black,
                      controller: orderTabControler,
                      tabs: tabControl().taborder),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Consumer<ListMakananLokal>(
                builder: (context, value, child) {
                  FirebaseMakanan().tampilkanMakanan().then((nilaiBaru) {
                    value.lisProgress = nilaiBaru;
                    value.setLoading();
                  });
                  return value.isLoading
                      ? CircularProgressIndicator()
                      : Card(
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height * 0.6,
                            child: TabBarView(
                                controller: orderTabControler,
                                children: [
                                  InProgressWidget(),
                                  PostOrderWidget()
                                ]),
                          ),
                        );
                },
              ),
            )
          ],
        ),
      ],
    );
  }
}
