import 'package:flutter/material.dart';

class tabControl extends ChangeNotifier {
  late TabController controller;
  final List<Tab> tabs = <Tab>[
    new Tab(text: 'New Taste'),
    new Tab(text: 'Popular'),
    new Tab(text: 'Recommended'),
  ];

  final List<Tab> taborder = <Tab>[
    new Tab(
      text: "In Progress",
    ),
    new Tab(
      text: "Past Orders",
    )
  ];

  final List<Tab> tabProfile = <Tab>[
    new Tab(
      text: "Account",
    ),
    new Tab(
      text: "FoodMarket",
    )
  ];
}
