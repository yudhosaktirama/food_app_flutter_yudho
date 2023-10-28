import 'package:flutter/material.dart';
import 'package:food_app/Model/ListModel.dart';
import 'package:food_app/page/LoginPage.dart';
import 'package:food_app/page/SplashScreenPage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => ListMakananLokal(),)
    ],
    child: LoginPage()));
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.delayed(Duration(seconds: 5)),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return SplashScreen();
        } else {
          return LoginPage();
        }
      },
    );
  }
}

