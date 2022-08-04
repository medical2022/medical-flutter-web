import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicinesystem/app/components/textformfield.dart';
import 'package:medicinesystem/app/controllers/consultamedica_controller.dart';

class SignosvitalesView extends StatefulWidget {
  SignosvitalesView({Key? key}) : super(key: key);

  @override
  State<SignosvitalesView> createState() => _SignosvitalesViewState();
}

class _SignosvitalesViewState extends State<SignosvitalesView> {
  
  @override
  Widget build(BuildContext context) {
    var con = Get.put(ConsultamedicaController());
    return Column(
      children: [
        Divider(
          height: 10,
        ),
        Align(
                  alignment: Alignment.centerLeft,
                  child:  Text(
                    "Signos vitales",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),),
          SizedBox(
                height: 20,
              ),
        Row(
          children: [
            Expanded(
                child: textformfield(
                    "Paciente", Get.width / 7, con.pacienteController)),
            SizedBox(
              width: 16,
            ),
            Expanded(
                child: textformfield(
                    "Frecuencia cardíaca", Get.width / 7, con.frecCardiacaController)),
            SizedBox(
              width: 16,
            ),
            Expanded(
                child: textformfield("Frecuencia respiratoria", Get.width / 7,
                    con.frecRespiratoriaController)),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Expanded(
                child: textformfield("Presión arterial sistémica",
                    Get.width / 7, con.presionArterialController)),
            SizedBox(
              width: 16,
            ),
            Expanded(
                child: textformfield(
                    "Peso(kg)", Get.width / 7, con.pesoController)),
            SizedBox(
              width: 16,
            ),
            Expanded(
                child: textformfield(
                    "Talla(cm)", Get.width / 7, con.tallaController)),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Expanded(
                child: textformfield("Perímetro craneal(cm)", Get.width / 7,
                    con.perimetroCranealController)),
            SizedBox(
              width: 16,
            ),
            Expanded(
                child: textformfield("Peímetro abdominal(cm)", Get.width / 7,
                    con.perimetroAbdominalController)),
            SizedBox(
              width: 16,
            ),
            Expanded(
                child: textformfield(
                    "Oximetría de pulso", Get.width / 7, con.oximetriaPulsoController)),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Expanded(
                child: textformfield(
                    "Temperatura (C)", Get.width / 7, con.temperaturaController)),
            SizedBox(
              width: 16,
            ),
            Expanded(
                child: textformfield("IMC", Get.width / 7, con.imcController)),
            SizedBox(
              width: 16,
            ),
            Expanded(
                child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Escalas menor de edad",)),
                SizedBox(
                  height: 10,
                ),
                Wrap(
                  spacing: 3,
                  children: [
                    Container(
                      height: 10,
                      width: 10,
                      color: Colors.yellow,
                    ),
                    Text("Bajo peso"),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 10,
                      width: 10,
                      color: Colors.green,
                    ),
                    Text("Bajo peso"),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 10,
                      width: 10,
                      color: Colors.orange,
                    ),
                    Text("Bajo peso"),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 10,
                      width: 10,
                      color: Colors.red,
                    ),
                    Text("Bajo peso")
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Escalas mayores de edad")),
                SizedBox(
                  height: 10,
                ),
                Wrap(
                  spacing: 3,
                  children: [
                    Container(
                      height: 10,
                      width: 10,
                      color: Colors.yellow,
                    ),
                    Text("Bajo peso"),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 10,
                      width: 10,
                      color: Colors.green,
                    ),
                    Text("Normal"),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 10,
                      width: 10,
                      color: Colors.orange,
                    ),
                    Text("Sobrepeso"),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 10,
                      width: 10,
                      color: Colors.red,
                    ),
                    Text("Obesidad"),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 10,
                      width: 10,
                      color: Colors.red[700],
                    ),
                    Text("Obesidad ||"),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 10,
                      width: 10,
                      color: Colors.red[900],
                    ),
                    Text("Obesidad |||")
                  ],
                )
              ],
            ))
          ],
        ),
      ],
    );
  }
}
