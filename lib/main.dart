import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:food_app/Model/ListModel.dart';
import 'package:food_app/State_Management/FirebaseAuth.dart';
import 'package:food_app/page/LoginPage.dart';
import 'package:food_app/page/SplashScreenPage.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => ListMakananLokal(),
    ),
    ChangeNotifierProvider(create: (context) => FirebaseAuthFlutter(),)
  ], child: LoginPage()));
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
