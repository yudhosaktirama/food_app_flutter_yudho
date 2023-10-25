import 'package:flutter/material.dart';

import 'DoubleTextProfileWidget.dart';

class AccountWidget extends StatelessWidget {
  const AccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          DoubleTextProfileWidget(icons: Icon(Icons.arrow_forward_ios),judul: "Edit Profile",),
           DoubleTextProfileWidget(icons: Icon(Icons.arrow_forward_ios),judul: "Home Address",),
    
            DoubleTextProfileWidget(icons: Icon(Icons.arrow_forward_ios),judul: "Security",),
             DoubleTextProfileWidget(icons: Icon(Icons.arrow_forward_ios),judul: "Payment",),
        ],
      ),
    );
  }
}

