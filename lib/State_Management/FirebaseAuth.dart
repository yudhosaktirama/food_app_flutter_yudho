import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food_app/Model/NewTasteModel.dart';

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
      'nomorHp': int.tryParse(nomorHpRegister_C.text),
      'Nomor_Rumah': int.tryParse(nomorTelpRumahRegister_C.text),
      'Kota': kotaRegister_C.text
    });
  }

  Future<void> signOutFirebase() async {
    await _firebaseAuth.signOut();
  }
}

class FirebaseMakanan {
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<void> tambahMakanan(int jumlahPesanan, String namaMakanan,
      int totalHarga, String gambar) async {
    await _firebaseFirestore.collection("makanan").add({
      'email': _firebaseAuth.currentUser?.email,
      'jumlahPesan': jumlahPesanan,
      'makanan': namaMakanan,
      'totalHarga': totalHarga,
      'gambar': gambar
    });
  }

  Future<List<InProgressModel>> tampilkanMakanan() async {
    List<InProgressModel> listProgress = [];
    final querySnapshot = await _firebaseFirestore
        .collection('makanan')
        .get();

    List<InProgressModel> data =
        querySnapshot.docs.map((e) => InProgressModel.fromJSON(e)).toList();
    for (var i = 0; i < data.length; i++) {
      listProgress.add(data[i]);
    }

    return listProgress;
  }
}
