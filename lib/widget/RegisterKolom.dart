import 'package:flutter/material.dart';
import 'package:food_app/State_Management/FirebaseAuth.dart';
import 'package:food_app/page/AddressPage.dart';
import 'package:provider/provider.dart';

import '../page/LoginPage.dart';
import 'KolomSignUp.dart';
import 'ProfileWidget.dart';

class RegisterKolom extends StatelessWidget {
  const RegisterKolom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      height: MediaQuery.of(context).size.height * 0.83,
      child: Column(
        children: [
          ProfileWidget(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Consumer<FirebaseAuthFlutter>(
            builder: (context, value, child) =>  KolomSignUpCustom(
              textEditingController: value.namaLengkapRegister_C,
                hint: "Masukkan Nama Lengkap Anda",
                judul: "Nama Lengkap",
                terlihat: false),
          ),
          Consumer<FirebaseAuthFlutter>(
            builder: (context, value, child) => KolomSignUpCustom(
              textEditingController: value.emailRegister_C,
              hint: "Masukkan Email Anda",
              judul: "Email Address",
              terlihat: false,
            ), 
          ),
          Consumer<FirebaseAuthFlutter>(
            builder: (context, value, child) => KolomSignUpCustom(
              textEditingController: value.passwordRegister_C,
              hint: "Masukkan Password Anda",
              judul: "Password",
              terlihat: true,
            ), 
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.7,
                height: MediaQuery.of(context).size.height * 0.07,
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.red),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(18))))),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return AddressPage();
                        },
                      ));
                    },
                    child: Text(
                      "Continue",
                      style: TextStyle(color: Colors.white),
                    )),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("I Already have account"),
              TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(
                      builder: (context) {
                        return LoginPage();
                      },
                    ));
                  },
                  child: Text(
                    "Log in",
                    style: TextStyle(color: Colors.red),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
