import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicinesystem/app/components/dropdownbutton.dart';
import 'package:medicinesystem/app/components/textformfield.dart';
import 'package:medicinesystem/app/controllers/register_controller.dart';
import 'package:medicinesystem/app/routes/app_pages.dart';

import 'package:medicinesystem/app/ui/utils/colors.dart';
import 'package:sizer/sizer.dart';

class RegisterPage extends GetView<RegisterController> {
  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formkey = GlobalKey<FormState>();
    return GetBuilder<RegisterController>(builder: (_) {
      return Scaffold(
        body: SafeArea(
          child: Row(
            children: [
              Expanded(
                  child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Bienvenidos",
                      style: TextStyle(color: colorprimary, fontSize: 52),
                    ),
                    Text(
                      "al Sistema Médico",
                      style: TextStyle(color: colorprimary, fontSize: 38),
                    ),
                    Text(
                      "Por favor inicia sesión para entrar al sistema",
                      style: Theme.of(context).textTheme.labelSmall,
                    )
                  ],
                ),
              )),
              Expanded(
                  child: Center(
                child: Container(
                  width: double.infinity,
                  color: Colors.grey.withOpacity(0.2),
                  child: Form(
                    key: formkey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        textformfield("Nombre", 22.w, _.nameController),
                        SizedBox(
                          height: 2.h,
                        ),
                        textformfield("Apellidos", 22.w, _.lastnamesController),
                        SizedBox(
                          height: 2.h,
                        ),
                        textformfield("Nombre del consultorio", 22.w,
                            _.nameconsultController),
                        SizedBox(
                          height: 2.h,
                        ),
                        textformfield("Correo", 22.w, _.emailController),
                        SizedBox(
                          height: 2.h,
                        ),
                        textformfield("Contraseña", 22.w, _.passwordController),
                        SizedBox(
                          height: 2.h,
                        ),
                        textformfield("Teléfono de contacto (10 digitos)", 22.w,
                            _.phoneController),
                        SizedBox(
                          height: 2.h,
                        ),
                        Obx(
                          () => dropdownbuttonW(
                              _.listspeciality, _.pickSpeciality, 22.w),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Obx(() => Checkbox(
                                value: _.isAcceptTerms.value,
                                onChanged: (bool? val) {
                                  _.isAcceptTerms.value = val!;
                                })),
                            Text("Acepto terminos y condiciones"),
                          ],
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              _.checkRegister(formkey);
                              _.register().then((value) => Get.defaultDialog(
                                  barrierDismissible: false,
                                  title: "Registro",
                                  content:
                                      Text("Registro completado con exito"),
                                  confirm: ElevatedButton(
                                    child: Text("Continuar"),
                                    onPressed: () {
                                      Get.offAllNamed(Routes.LOGIN);
                                      
                                    },
                                  )));
                            },
                            child: Text("Registrar")),
                        SizedBox(
                          height: 2.h,
                        ),
                        Text(
                            "Al iniciar sesión aceptas nuestros Términos y condiciones"),
                        SizedBox(
                          height: 2.h,
                        ),
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(text: "¿ya tienes una cuenta? "),
                          TextSpan(
                              text: "Iniciar sesión",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: colorprimary),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () => Get.toNamed(Routes.LOGIN))
                        ]))
                      ],
                    ),
                  ),
                ),
              )),
            ],
          ),
        ),
      );
    });
  }
}
