import 'package:flutter/material.dart';
import 'package:food_app/State_Management/tabControllerState.dart';
import 'package:food_app/widget/NewTasteWidget.dart';
import 'package:food_app/widget/PopularWidget.dart';
import 'package:food_app/widget/RecommendedWidget.dart';

import '../widget/HeadlineMakananWidget.dart';
import '../widget/NewsPopularWidgetUpper.dart';

class NewsPopulerPage extends StatefulWidget {
  NewsPopulerPage({super.key});

  @override
  State<NewsPopulerPage> createState() => _NewsPopulerPageState();
}

class _NewsPopulerPageState extends State<NewsPopulerPage>
    with TickerProviderStateMixin {
  TabController? tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            NewsTitlePopularPageWidget(),
            HeadlineMakananWidget(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 10,
                child: Container(
                  child: TabBar(
                    indicatorPadding: EdgeInsets.symmetric(horizontal: 20),
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicatorColor: Colors.black,
                    automaticIndicatorColorAdjustment: true,
                    labelColor: Colors.black,
                    unselectedLabelStyle: TextStyle(color: Colors.black),
                    labelStyle: TextStyle(color: Colors.black),
                    controller: tabController,
                    tabs: tabControl().tabs),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 8,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.5,
                  child: TabBarView(
                      controller: tabController,
                      children: [
                        NewTasteWidget(),
                        PopularWidget(),
                        RecommendedWidget()
                      ]),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
