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

  InProgressModel({
    required this.gambar,
    required this.nama,
    required this.totalBeli,
    required this.totalHarga
  });
}
