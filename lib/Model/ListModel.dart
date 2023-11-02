import 'package:flutter/material.dart';
import 'package:food_app/Model/NewTasteModel.dart';

class ListMakananLokal extends ChangeNotifier {
  List<InProgressModel> lisProgress = [];
  bool isLoading = true;
  int counterMakanan = 1;
  int counterupdate = 1;

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
        rating: 5.0),
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
        harga: 1000,
        email: "",
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

  void updateItemINC(int counterMakanan) {
    counterupdate += 1;
    notifyListeners();
  }
   void updateItemDCT(int counterMakanan) {
    if (counterupdate <= 1) {
    } else {
      counterupdate -= 1;
      notifyListeners();
    }
  }

  void setLoading() {
    isLoading = false;
    notifyListeners();
  }

  void setLoadingTrue() {
    isLoading = true;
    notifyListeners();
  }

  void setUlangCounter() {
    counterMakanan = 1;
    notifyListeners();
  }
   void setUlangCounterUpdate(int counter) {
    counterupdate = 1;
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

  int updatehargaMakanan(int harga) {
    hargaMakananTotal = harga * counterupdate;
    int totalBayar = hargaMakananTotal + 10000 + 10000;
    return totalBayar;
  }

  int get getHargaMakananTotal => hargaMakananTotal;
}
