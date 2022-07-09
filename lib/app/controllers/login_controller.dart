import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicinesystem/app/data/auth/auth.dart';
import 'package:medicinesystem/app/routes/app_pages.dart';

class LoginController extends GetxController {
  Auth auth = new Auth();
  var usercontroller = new TextEditingController();
  var passwordcontroller = new TextEditingController();

  RxBool isForget = false.obs;

  Future login() {
    return auth.LoginAuth(usercontroller.text, passwordcontroller.text)
        .then((value) => Get.offNamed(Routes.PACIENTES))
        .catchError((val) => {
              Get.defaultDialog(
                title: "Datos Inválidos",
                content: Text("Vuelva a intentarlo"),
                actions: [
                  ElevatedButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: Text("Regresar"))
                ],
                barrierDismissible: false,
              )
            });
  }

  void checklogin(GlobalKey<FormState> formkey) {
    var f = formkey.currentState!.validate();
    if (!f) {
      return;
    } else {
      
      login();
    }
  }
}
