import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class FirebaseAuthFlutter extends ChangeNotifier {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  TextEditingController emailLogin_C = new TextEditingController();
  TextEditingController passwordLogin_C = new TextEditingController();

  TextEditingController emailRegister_C = new TextEditingController();
  TextEditingController passwordRegister_C = new TextEditingController();
  TextEditingController namaLengkapRegister_C = new TextEditingController();
  TextEditingController nomorHpRegister_C = new TextEditingController();
  TextEditingController alamatRegister_C = new TextEditingController();
  TextEditingController nomorTelpRumahRegister_C = new TextEditingController();
  TextEditingController kotaRegister_C = new TextEditingController();

  Future<void> registerFirebase() async {
    await _firebaseAuth.createUserWithEmailAndPassword(
        email: emailRegister_C.text, password: passwordRegister_C.text);
  }

  Future<void> loginFirebase() async {
    await _firebaseAuth.signInWithEmailAndPassword(
        email: emailLogin_C.text, password: passwordLogin_C.text);
  }

  Future<void> createUserBaru() async {
    await _firebaseFirestore.collection("user").add({
      'nama': namaLengkapRegister_C.text,
      'password': passwordRegister_C.text,
      'email': emailRegister_C.text,
      'Alamat': alamatRegister_C.text,
      'nomorHp' : int.tryParse(nomorHpRegister_C.text),
      'Nomor_Rumah': int.tryParse(nomorTelpRumahRegister_C.text),
      'Kota' : kotaRegister_C.text
    });
  }
}
