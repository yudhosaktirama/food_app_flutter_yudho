import 'package:flutter/material.dart';
import 'package:food_app/Model/NewTasteModel.dart';

class ListMakananLokal extends ChangeNotifier {
  List<InProgressModel> lisProgress = [];
  int counterMakanan = 1;

  int hargaMakananTotal = 0;
  List<NewTasteModel> lisNewTaste = [
    NewTasteModel(
        bahanMakanan: "800 g (1 ekor) ayam utuh,20 g asam jawa,",
        deskripsi:
            "Ayam bakar adalah sebuah hidangan Asia Tenggara Maritim, terutama hidangan Indonesia atau Malaysia, dari ayam yang dipanggang di atas arang.",
        gambar:
            "https://img.qraved.co/v2/image/data/2015/11/05/ayam_bakar-740x493-x.jpg",
        harga: 10000,
        nama: "Ayam Bakar",
        rating: 4.0),
    NewTasteModel(
        bahanMakanan: "800 g (1 ekor) ayam utuh,20 g asam jawa,",
        deskripsi:
            "Ayam bakar adalah sebuah hidangan Asia Tenggara Maritim, terutama hidangan Indonesia atau Malaysia, dari ayam yang dipanggang di atas arang.",
        gambar:
            "https://img.qraved.co/v2/image/data/2015/11/05/ayam_bakar-740x493-x.jpg",
        harga: 50000,
        nama: "Ayam Bakar",
        rating: 4.0),
    NewTasteModel(
        bahanMakanan: "800 g (1 ekor) ayam utuh,20 g asam jawa,",
        deskripsi:
            "Ayam bakar adalah sebuah hidangan Asia Tenggara Maritim, terutama hidangan Indonesia atau Malaysia, dari ayam yang dipanggang di atas arang.",
        gambar:
            "https://img.qraved.co/v2/image/data/2015/11/05/ayam_bakar-740x493-x.jpg",
        harga: 20000,
        nama: "Ayam Bakar",
        rating: 4.0),
    NewTasteModel(
        bahanMakanan: "800 g (1 ekor) ayam utuh,20 g asam jawa,",
        deskripsi:
            "Ayam bakar adalah sebuah hidangan Asia Tenggara Maritim, terutama hidangan Indonesia atau Malaysia, dari ayam yang dipanggang di atas arang.",
        gambar:
            "https://img.qraved.co/v2/image/data/2015/11/05/ayam_bakar-740x493-x.jpg",
        harga: 5000,
        nama: "Ayam Bakar",
        rating: 4.0),
    NewTasteModel(
        bahanMakanan: "800 g (1 ekor) ayam utuh,20 g asam jawa,",
        deskripsi:
            "Ayam bakar adalah sebuah hidangan Asia Tenggara Maritim, terutama hidangan Indonesia atau Malaysia, dari ayam yang dipanggang di atas arang.",
        gambar:
            "https://img.qraved.co/v2/image/data/2015/11/05/ayam_bakar-740x493-x.jpg",
        harga: 4000,
        nama: "Ayam Bakar",
        rating: 4.0),
    NewTasteModel(
        bahanMakanan: "800 g (1 ekor) ayam utuh,20 g asam jawa,",
        deskripsi:
            "Ayam bakar adalah sebuah hidangan Asia Tenggara Maritim, terutama hidangan Indonesia atau Malaysia, dari ayam yang dipanggang di atas arang.",
        gambar:
            "https://img.qraved.co/v2/image/data/2015/11/05/ayam_bakar-740x493-x.jpg",
        harga: 8000,
        nama: "Ayam Bakar",
        rating: 4.0),
    NewTasteModel(
        bahanMakanan: "800 g (1 ekor) ayam utuh,20 g asam jawa,",
        deskripsi:
            "Ayam bakar adalah sebuah hidangan Asia Tenggara Maritim, terutama hidangan Indonesia atau Malaysia, dari ayam yang dipanggang di atas arang.",
        gambar:
            "https://img.qraved.co/v2/image/data/2015/11/05/ayam_bakar-740x493-x.jpg",
        harga: 9000,
        nama: "Ayam Bakar",
        rating: 4.0),
    NewTasteModel(
        bahanMakanan: "800 g (1 ekor) ayam utuh,20 g asam jawa,",
        deskripsi:
            "Ayam bakar adalah sebuah hidangan Asia Tenggara Maritim, terutama hidangan Indonesia atau Malaysia, dari ayam yang dipanggang di atas arang.",
        gambar:
            "https://img.qraved.co/v2/image/data/2015/11/05/ayam_bakar-740x493-x.jpg",
        harga: 10000,
        nama: "Ayam Bakar",
        rating: 4.0),
    NewTasteModel(
        bahanMakanan: "800 g (1 ekor) ayam utuh,20 g asam jawa,",
        deskripsi:
            "Ayam bakar adalah sebuah hidangan Asia Tenggara Maritim, terutama hidangan Indonesia atau Malaysia, dari ayam yang dipanggang di atas arang.",
        gambar:
            "https://img.qraved.co/v2/image/data/2015/11/05/ayam_bakar-740x493-x.jpg",
        harga: 10000,
        nama: "Ayam Bakar",
        rating: 4.0),
  ];

  void setCheckout(String nama, int totalHarga, int totalItem, String gambar) {
    lisProgress.add(InProgressModel(
        gambar: gambar,
        nama: nama,
        totalBeli: counterMakanan,
        totalHarga: totalHarga));
    notifyListeners();
  }

  void Increment() {
    counterMakanan += 1;
    notifyListeners();
  }

  void Decrement() {
    if (counterMakanan <= 1) {
    } else {
      counterMakanan -= 1;
      notifyListeners();
    }
  }

  void setUlangCounter() {
    counterMakanan = 1;
    notifyListeners();
  }

  int TotalBayar() {
    int totalbayar = hargaMakananTotal + 10000 + 10000;
    return totalbayar;
  }

  int hargaMakanan(int harga) {
    hargaMakananTotal = harga * counterMakanan;
    return hargaMakananTotal;
  }

  int get getHargaMakananTotal => hargaMakananTotal;
}
