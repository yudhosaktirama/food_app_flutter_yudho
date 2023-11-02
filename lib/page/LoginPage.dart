import 'package:flutter/material.dart';
import 'package:food_app/State_Management/FirebaseAuth.dart';
import 'package:food_app/page/HomePage.dart';
import 'package:food_app/page/RegisterPage.dart';
import 'package:provider/provider.dart';

import '../widget/EmailPasswordWidget.dart';
import '../widget/OrContinueIconWidget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          leadingWidth: MediaQuery.of(context).size.width,
          elevation: 0,
          leading: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.06,
                  ),
                  Text(
                    "Sign In",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.06,
                  ),
                  Text(
                    "Find your best ever meal",
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              )
            ],
          ),
          backgroundColor: Colors.white,
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.8,
                  child: Column(
                    children: [
                      Consumer<FirebaseAuthFlutter>(
                        builder: (context, value, child) => EmailPasswordWidget(
                          tidakTerliihat: false,
                            judul: "Email Address",
                            hint: "Masukkan Email Anda",
                            teksEdit: value.emailLogin_C),
                      ),
                      Consumer<FirebaseAuthFlutter>(
                          builder: (context, value, child) =>
                              EmailPasswordWidget(
                                tidakTerliihat: true,
                                  judul: "Password",
                                  hint: "Masukkan Password Anda",
                                  teksEdit: value.passwordLogin_C)),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.04,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.7,
                            height: MediaQuery.of(context).size.height * 0.07,
                            child: Builder(builder: (context) {
                              return ElevatedButton(
                                  onPressed: () {
                                    try {
                                      Provider.of<FirebaseAuthFlutter>(context,
                                              listen: false)
                                          .loginFirebase()
                                          .then((value) {
                                        return Navigator.push(context,
                                            MaterialPageRoute(
                                          builder: (context) {
                                            return HomePage();
                                          },
                                        ));
                                      });
                                    } catch (e) {
                                      print(e);
                                    }
                                  },
                                  child: Text(
                                    "Sign in",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  style: ButtonStyle(
                                      shape: MaterialStatePropertyAll(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8))),
                                      backgroundColor: MaterialStatePropertyAll(
                                          Colors.red)));
                            }),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                "Forgot Password",
                                style: TextStyle(
                                    color: Colors.red,
                                    decoration: TextDecoration.underline),
                              ))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Text("-OR Continue With-")],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          OrContinueIconWidget(
                              gambar: "asset/google.png", judul: "Google"),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.04,
                          ),
                          OrContinueIconWidget(
                              gambar: "asset/facebook.png", judul: "Facebook"),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Create An Account"),
                          Builder(builder: (context) {
                            return TextButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) {
                                      return RegisterPage();
                                    },
                                  ));
                                },
                                child: Text(
                                  "Sign Up",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700),
                                ));
                          })
                        ],
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
