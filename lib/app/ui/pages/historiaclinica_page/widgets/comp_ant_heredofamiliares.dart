import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicinesystem/app/components/textformfield.dart';
import 'package:medicinesystem/app/controllers/exploracionfisica_controller.dart';
import 'package:sizer/sizer.dart';
class HeredofamiliaresView extends StatefulWidget {
  HeredofamiliaresView({Key? key}) : super(key: key);

  @override
  State<HeredofamiliaresView> createState() => _HeredofamiliaresViewState();
}

class _HeredofamiliaresViewState extends State<HeredofamiliaresView> {
  String select = "Emma";
  TextEditingController craneocontroller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ExploracionfisicaController>(
        init: ExploracionfisicaController(),
        builder: (_) {
          return Column(
            children: [
              Divider(
                height: 10,
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child:  Text(
                    "Antecedentes heredofamiliares",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                      child: Column(
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child:
                              Text("Malformaciones congénitas", style: TextStyle(fontSize: 18))),
                      Row(
                        children: [
                          Radio(
                              value: "Si",
                              groupValue: select,
                              onChanged: (value) {
                                select = value.toString();
                              }),
                          Text("Si"),
                          Radio(
                              value: "No",
                              groupValue: select,
                              onChanged: (value) {
                                select = value.toString();
                              }),
                          Text("No"),
                          SizedBox(
                            width: 20,
                          ),
                         
                        ],
                      )
                    ],
                  )),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      child: Column(
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Diabetes mellitus", style: TextStyle(fontSize: 18))),
                      Row(
                        children: [
                          Radio(
                              value: "Si",
                              groupValue: select,
                              onChanged: (value) {
                                select = value.toString();
                              }),
                          Text("Si"),
                          Radio(
                              value: "No",
                              groupValue: select,
                              onChanged: (value) {
                                select = value.toString();
                              }),
                          Text("No"),
                          SizedBox(
                            width: 20,
                          ),
                         
                        ],
                      )
                    ],
                  )),
                ],
              ),
              SizedBox(height: 2.h),
              Row(
                children: [
                  Expanded(
                      child: Column(
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Hipertensión arterial", style: TextStyle(fontSize: 18))),
                      Row(
                        children: [
                          Radio(
                              value: "Si",
                              groupValue: select,
                              onChanged: (value) {
                                select = value.toString();
                              }),
                          Text("Si"),
                          Radio(
                              value: "No",
                              groupValue: select,
                              onChanged: (value) {
                                select = value.toString();
                              }),
                          Text("No"),
                          SizedBox(
                            width: 20,
                          ),
                         
                        ],
                      )
                    ],
                  )),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      child: Column(
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child:
                              Text("Epilepsía", style: TextStyle(fontSize: 18))),
                      Row(
                        children: [
                          Radio(
                              value: "Si",
                              groupValue: select,
                              onChanged: (value) {
                                select = value.toString();
                              }),
                          Text("Si"),
                          Radio(
                              value: "No",
                              groupValue: select,
                              onChanged: (value) {
                                select = value.toString();
                              }),
                          Text("No"),
                          SizedBox(
                            width: 20,
                          ),
                         
                        ],
                      )
                    ],
                  )),
                ],
              ),
               SizedBox(height: 2.h),
              Row(
                children: [
                  Expanded(
                      child: Column(
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Alergía", style: TextStyle(fontSize: 18))),
                      Row(
                        children: [
                          Radio(
                              value: "Si",
                              groupValue: select,
                              onChanged: (value) {
                                select = value.toString();
                              }),
                          Text("Si"),
                          Radio(
                              value: "No",
                              groupValue: select,
                              onChanged: (value) {
                                select = value.toString();
                              }),
                          Text("No"),
                          SizedBox(
                            width: 20,
                          ),
                         
                        ],
                      )
                    ],
                  )),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      child: Column(
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Asma",
                              style: TextStyle(fontSize: 18))),
                      Row(
                        children: [
                          Radio(
                              value: "Si",
                              groupValue: select,
                              onChanged: (value) {
                                select = value.toString();
                              }),
                          Text("Si"),
                          Radio(
                              value: "No",
                              groupValue: select,
                              onChanged: (value) {
                                select = value.toString();
                              }),
                          Text("No"),
                          SizedBox(
                            width: 20,
                          ),
                         
                        ],
                      )
                    ],
                  )),
                ],
              ),
              SizedBox(height: 2.h,),
              Row(
                children: [
                  Expanded(
                      child: Column(
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Lupus",
                              style: TextStyle(fontSize: 18))),
                      Row(
                        children: [
                          Radio(
                              value: "Si",
                              groupValue: select,
                              onChanged: (value) {
                                select = value.toString();
                              }),
                          Text("Si"),
                          Radio(
                              value: "No",
                              groupValue: select,
                              onChanged: (value) {
                                select = value.toString();
                              }),
                          Text("No"),
                          SizedBox(
                            width: 20,
                          ),
                         
                        ],
                      )
                    ],
                  )),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      child: Column(
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Enfermedad renal",
                              style: TextStyle(fontSize: 18))),
                     Row(
                        children: [
                          Radio(
                              value: "Si",
                              groupValue: select,
                              onChanged: (value) {
                                select = value.toString();
                              }),
                          Text("Si"),
                          Radio(
                              value: "No",
                              groupValue: select,
                              onChanged: (value) {
                                select = value.toString();
                              }),
                          Text("No"),
                          SizedBox(
                            width: 20,
                          ),
                         
                        ],
                      )
                    ],
                  )),
                ],
              ),
               SizedBox(height: 2.h),
              Row(
                children: [
                  Expanded(
                      child: Column(
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Enuresis", style: TextStyle(fontSize: 18))),
                      Row(
                        children: [
                          Radio(
                              value: "Si",
                              groupValue: select,
                              onChanged: (value) {
                                select = value.toString();
                              }),
                          Text("Si"),
                          Radio(
                              value: "No",
                              groupValue: select,
                              onChanged: (value) {
                                select = value.toString();
                              }),
                          Text("No"),
                          SizedBox(
                            width: 20,
                          ),
                         
                        ],
                      )
                    ],
                  )),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      child: Column(
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Obesidad",
                              style: TextStyle(fontSize: 18))),
                      Row(
                        children: [
                          Radio(
                              value: "Si",
                              groupValue: select,
                              onChanged: (value) {
                                select = value.toString();
                              }),
                          Text("Si"),
                          Radio(
                              value: "No",
                              groupValue: select,
                              onChanged: (value) {
                                select = value.toString();
                              }),
                          Text("No"),
                          SizedBox(
                            width: 20,
                          ),
                         
                        ],
                      )
                    ],
                  )),
                ],
              ),
               SizedBox(height: 2.h),
              Row(
                children: [
                  Expanded(
                      child: Column(
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Cancer", style: TextStyle(fontSize: 18))),
                      Row(
                        children: [
                          Radio(
                              value: "Si",
                              groupValue: select,
                              onChanged: (value) {
                                select = value.toString();
                              }),
                          Text("Si"),
                          Radio(
                              value: "No",
                              groupValue: select,
                              onChanged: (value) {
                                select = value.toString();
                              }),
                          Text("No"),
                          SizedBox(
                            width: 20,
                          ),
                         
                        ],
                      )
                    ],
                  )),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      child: Column(
                    children: [
                      
                    ],
                  )),
                ],
              ),
              
            ],
          );
        });
  }
}
