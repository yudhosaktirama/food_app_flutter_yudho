import 'package:flutter/material.dart';

class EmailPasswordWidget extends StatelessWidget {
  final TextEditingController teksEdit;
  final String judul;
  final String hint;
  const EmailPasswordWidget({
    required this.teksEdit,
    required this.hint,
    required this.judul,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 20),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.7,
            height: MediaQuery.of(context).size.height * 0.12,
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                          judul,
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Expanded(
                  child: Container(
                    child: TextField(
                      controller: teksEdit,
                      decoration: InputDecoration(
                          hintText: hint,
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8))),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
