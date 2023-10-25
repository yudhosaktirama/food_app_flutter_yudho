import 'package:flutter/material.dart';

class OrContinueIconWidget extends StatelessWidget {
  final String gambar;
  final String judul;
  const OrContinueIconWidget({
    required this.gambar,required this.judul,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.30,
      height: MediaQuery.of(context).size.height * 0.08,
      decoration: BoxDecoration(
          color: Color.fromRGBO(235, 0, 41, 0.1),
          borderRadius: BorderRadius.circular(21)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.1,
            height: MediaQuery.of(context).size.height * 0.1,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(gambar))),
          ),
          Text(
            judul,
            style: TextStyle(color: Colors.black),
          )
        ],
      ),
    );
  }
}