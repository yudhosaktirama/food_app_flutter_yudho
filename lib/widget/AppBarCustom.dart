import 'package:flutter/material.dart';



class AppBarCustom extends StatelessWidget {
  final BuildContext konteks;
  const AppBarCustom({
    required this.konteks,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.1,
      child: Row(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.1,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.11,
            height: MediaQuery.of(context).size.height * 0.06,
            decoration: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(8)),
            child: Center(
              child: Builder(builder: (context) {
                return IconButton(
                    onPressed: () {
                      Navigator.pop(konteks);
                    },
                    icon: Icon(Icons.arrow_back_ios_new_sharp),
                    iconSize: 28,
                    color: Colors.white);
              }),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.03,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.4,
            height: MediaQuery.of(context).size.height * 0.08,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "Register And Eat",
                        style: TextStyle(color: Color(0xFF8D92A3)),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}