import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicinesystem/app/components/textformfield.dart';
import 'package:medicinesystem/app/routes/app_pages.dart';
import 'package:medicinesystem/app/ui/utils/colors.dart';
import 'package:sizer/sizer.dart';
import '../../../controllers/login_controller.dart';

class LoginPage extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formkey = GlobalKey<FormState>();
    return GetBuilder<LoginController>(builder: (_) {
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
                        textformfield("Usuario", 22.w, _.usercontroller),
                        SizedBox(
                          height: 5.h,
                        ),
                        textformfieldPassword("Contraseña", 22.w, _.passwordcontroller),
                        SizedBox(
                          height: 2.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Obx(() => Checkbox(
                                    value: _.isForget.value,
                                    onChanged: (bool? val) {
                                      _.isForget.value = val!;
                                    })),
                                Text("Recordar contraseña"),
                              ],
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text("Restablecer contraseña"),
                          ],
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              _.checklogin(formkey);
                            },
                            child: Text("Ingresar")),
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
                          TextSpan(text: "¿No tienes una cuenta? "),
                          TextSpan(
                              text: "Registrarse",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: colorprimary),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () => Get.toNamed(Routes.REGISTER))
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
