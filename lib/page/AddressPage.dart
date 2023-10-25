import 'package:flutter/material.dart';
import 'package:food_app/page/LoginPage.dart';
import 'package:food_app/page/SuccessRegisterPage.dart';
import 'package:food_app/widget/AppBarCustom.dart';
import 'package:food_app/widget/KolomSignUp.dart';

class AddressPage extends StatelessWidget {
  const AddressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: null,
        body: ListView(
          children: [
            Column(
              children: [
                AppBarCustom(konteks: context),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.8,
                  child: Column(
                    children: [
                      KolomSignUpCustom(
                          hint: "Masukkan Nomor HP",
                          judul: "Nomor Hp",
                          terlihat: false),
                      KolomSignUpCustom(
                          hint: "Masukkan Alamat",
                          judul: "Alamat",
                          terlihat: false),
                      KolomSignUpCustom(
                          hint: "Masukkan Nomor Telepon Rumah",
                          judul: "Nomor Telp Rumah",
                          terlihat: false),
                      KolomSignUpCustom(
                          hint: "Masukkan Asal Kota",
                          judul: "Kota",
                          terlihat: false),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: MediaQuery.of(context).size.height * 0.07,
                        child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.red),
                                shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)))),
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) {
                                  return SuccessRegisterPage();
                                },
                              ));
                            },
                            child: Text("Sign Up Now")),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("I Already Have Account"),
                          TextButton(
                              onPressed: () {
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(
                                  builder: (context) {
                                    return LoginPage();
                                  },
                                ));
                              },
                              child: Text(
                                "Login",
                                style: TextStyle(color: Colors.red),
                              ))
                        ],
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
