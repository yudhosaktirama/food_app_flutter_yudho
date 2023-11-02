import 'package:cloud_firestore/cloud_firestore.dart';

class NewTasteModel {
  String nama;
  int harga;
  double rating;
  String gambar;
  String deskripsi;
  String bahanMakanan;

  NewTasteModel(
      {required this.bahanMakanan,
      required this.deskripsi,
      required this.gambar,
      required this.harga,
      required this.nama,
      required this.rating});
}

class InProgressModel {
  String nama;
  String gambar;
  int totalBeli;
  int totalHarga;
  String email;
  int harga;

  InProgressModel(
      {required this.gambar,
      required this.harga,
      required this.nama,
      required this.totalBeli,
      required this.email,
      required this.totalHarga});

  toJson() {
    return {
      "makanan": nama,
      "gambar": gambar,
      'jumlahPesan': totalBeli,
      'totalHarga': totalHarga,
      'email': email
    };
  }

  factory InProgressModel.fromJSON(
      DocumentSnapshot<Map<String, dynamic>> snapshot) {
    final data = snapshot.data();
    return InProgressModel(
      harga: data?['hargaSatuan'],
        gambar: data?['gambar'],
        nama: data?['makanan'],
        totalBeli: data?['jumlahPesan'],
        email: data?['email'],
        totalHarga: data?['totalHarga']);
  }
}
