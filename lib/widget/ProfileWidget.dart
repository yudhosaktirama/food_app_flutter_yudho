import 'package:flutter/material.dart';





class ProfileWidget extends StatelessWidget {
  const ProfileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.35,
          height: MediaQuery.of(context).size.height * 0.2,
          decoration: BoxDecoration(
            color: Colors.grey,
            shape: BoxShape.circle,
            image:
                DecorationImage(image: AssetImage("asset/lingkaranluar.png")),
          ),
        ),
        Positioned(
          bottom: MediaQuery.of(context).size.height * 0.028,
          left: MediaQuery.of(context).size.width * 0.037,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.28,
            height: MediaQuery.of(context).size.height * 0.15,
            decoration: BoxDecoration(
                color: Colors.grey,
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage("asset/lingkarandalam.png"),
                    fit: BoxFit.fill)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text("Tambahkan"),
                ),
                Center(
                  child: Text("Gambar"),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}