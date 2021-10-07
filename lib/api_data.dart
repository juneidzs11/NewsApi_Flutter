

import 'package:flutter/material.dart';


class ApiData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   void displayData() {
      Navigator.of(context).pushNamed("/apidisplay");
    }

    return Scaffold(
      body: Container(
        child: Center(
          child: ElevatedButton(onPressed: displayData, child: Text("Get Data")),
        ),
      ),
    );
  }
}
