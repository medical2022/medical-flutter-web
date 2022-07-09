import 'package:flutter/material.dart';

Widget textformfield(String labeltext, double w, TextEditingController con) {
  return SizedBox(
    width: w,
    child: TextFormField(
      controller: con,
      
      validator: (value) {
       return  value!.isEmpty ? "Debe llenar el campo" : null ;
      },
      decoration: InputDecoration(
        labelText: labeltext,
        border: OutlineInputBorder(),
      ),
      onSaved: (value) {
        con.text = value!;
      },
    ),
  );
}

Widget textformfieldPassword(String labeltext, double w, TextEditingController con) {
  return SizedBox(
    width: w,
    child: TextFormField(
      controller: con,
      obscureText: true,
      validator: (value) {
       return  value!.isEmpty ? "Debe llenar el campo" : null ;
      },
      decoration: InputDecoration(
        labelText: labeltext,
        border: OutlineInputBorder(),
      ),
      onSaved: (value) {
        con.text = value!;
      },
    ),
  );
}

