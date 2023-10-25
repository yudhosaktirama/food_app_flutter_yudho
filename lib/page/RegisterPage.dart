import 'package:flutter/material.dart';

import '../widget/AppBarCustom.dart';
import '../widget/RegisterKolom.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.white,
        appBar: null,
        body: ListView(
          children: [
            Column(
              children: [AppBarCustom(konteks: context), RegisterKolom()],
            ),
          ],
        ),
      ),
    );
  }
}


