import 'package:flutter/material.dart';
import 'package:food_app/page/NewsPopulerPage.dart';
import 'package:food_app/page/OrderPage.dart';
import 'package:food_app/page/ProfilePage.dart';

class BottomNavState extends ChangeNotifier {
  int index = 0;
  List<Widget> menu = [NewsPopulerPage(), OrderPage(), ProfilePage()];

  void setMenu(int newindex) {
    index = newindex;
    notifyListeners();
  }

  Widget get menuku => menu[index];
}
