import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget dropdownbuttonW(List lista, RxString val,double w) {
  return Container(
    width: w,
    child: DropdownButton<String>(
      value: val.value,
      isExpanded: true,
      
      onChanged: (value) {
        val.value = value.toString();
      },
      items: lista
          .map((item) =>
              DropdownMenuItem<String>(value: item, child: Text("${item}")))
          .toList(),
    ),
  );
}
