import 'package:flutter/material.dart';

Widget elevatedbutton() {
  return ElevatedButton(
    onPressed: () {},
    child: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Text(
        "Recetas anteriores",
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    ),
    style: ElevatedButton.styleFrom(primary: Colors.blue[900]),
  );
}
