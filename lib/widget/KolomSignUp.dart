import 'package:flutter/material.dart';

class KolomSignUpCustom extends StatelessWidget {
  final TextEditingController textEditingController;
  final String judul;
  final String hint;
  final bool terlihat;
  KolomSignUpCustom({
    required this.textEditingController,
    required this.hint,
    required this.judul,
    required this.terlihat,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.8,
          height: MediaQuery.of(context).size.height * 0.15,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Row(
                  children: [
                    Text(
                      judul,
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: Container(
                child: Center(
                  child: TextField(
                    controller: textEditingController,
                    obscureText: terlihat,
                    decoration: InputDecoration(
                        hintText: hint,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)),
                        fillColor: Colors.white,
                        filled: true),
                    style: TextStyle(),
                  ),
                ),
              ))
            ],
          ),
        ),
      ],
    );
  }
}
