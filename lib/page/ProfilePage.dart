import 'package:flutter/material.dart';
import 'package:food_app/State_Management/tabControllerState.dart';
import 'package:food_app/widget/AccountWidget.dart';
import 'package:food_app/widget/FoodMarketWidget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with TickerProviderStateMixin {
  TabController? profileTabControler;

  @override
  void initState() {
    super.initState();
    profileTabControler = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.2,
              height: MediaQuery.of(context).size.height * 0.1,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(image: NetworkImage("https://64.media.tumblr.com/e2737d236a230a70d7c2cd362f6e77c3/5828cd1ac5de3062-6c/s1280x1920/265217f966d50afe66cab43459366d51809748b8.jpg"))
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.1,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Yudho Sakti Rama S.A",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                ),
                Text(
                  "yudholskaslas@example.com",
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: Container(
              child: TabBar(
                indicatorPadding: EdgeInsets.symmetric(horizontal: 50),
                indicatorColor: Colors.black,
                labelColor: Colors.black,
                  controller: profileTabControler, tabs: tabControl().tabProfile),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.25,
            child: TabBarView(
                controller: profileTabControler,
                children: [AccountWidget(), FoodMarketWidget()]),
          ),
        )
      ],
    );
  }
}
