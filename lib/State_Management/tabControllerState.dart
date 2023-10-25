import 'package:flutter/material.dart';

class tabControl extends ChangeNotifier {
  late TabController controller;
  final List<Tab> tabs = <Tab>[
    new Tab(text: 'New Taste'),
    new Tab(text: 'Popular'),
    new Tab(text: 'Recommended'),
  ];
}
