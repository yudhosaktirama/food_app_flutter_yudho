import 'package:flutter/material.dart';
import 'package:food_app/State_Management/bottomNavState.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider(
        create: (context) => BottomNavState(),
        child: Scaffold(
          appBar: null,
          body: Consumer<BottomNavState>(
            builder: (context, value, child) {
              return value.menuku;
            },
          ),
          bottomNavigationBar: Consumer<BottomNavState>(
            builder: (context, value, child) {
              return BottomNavigationBar(
                selectedItemColor: Colors.red,
                currentIndex: value.index,
                onTap: value.setMenu,
                items: [
              BottomNavigationBarItem(
                label: "Home",
                icon: Icon(Icons.home)),
              BottomNavigationBarItem(
                label: "Order",
                icon: Icon(Icons.cabin)),
              BottomNavigationBarItem(
                label: "Person",
                icon: Icon(Icons.person))
            ]);
            }, 
          )
        ),
      ),
    );
  }
}
