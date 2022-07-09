import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicinesystem/app/data/auth/auth.dart';
import 'package:medicinesystem/app/data/models/Paciente._model.dart';
import 'package:medicinesystem/app/data/models/User_model.dart';
import 'package:medicinesystem/app/data/services/User_service.dart';
import 'package:medicinesystem/app/data/services/api.dart';
import 'package:medicinesystem/app/routes/app_pages.dart';
import 'package:uuid/uuid.dart';

class RegisterController extends GetxController {
  UserService userService = new UserService();
  Auth auth = new Auth();
  List<String> listspeciality = ["Pediatría", "Internista"];
  RxString pickSpeciality = "Pediatría".obs;
  RxBool isAcceptTerms = false.obs;
  var nameController = new TextEditingController();
  var lastnamesController = new TextEditingController();
  var nameconsultController = new TextEditingController();
  var emailController = new TextEditingController();
  var phoneController = new TextEditingController();
  var specialtyController = new TextEditingController();
  var passwordController = new TextEditingController();

  register() async {
    specialtyController.text = pickSpeciality.value;
    String uuid = Uuid().v1();
    User user = new User(
        id: "${uuid}",
        name: nameController.text,
        lastname: lastnamesController.text,
        nameconsult: nameconsultController.text,
        email: emailController.text,
        phone: phoneController.text,
        speciality: specialtyController.text);
    userService.createUserWithId(user, "${uuid}");
    await auth.RegisterAuth(emailController.text, passwordController.text)
        .then((value) => Get.defaultDialog(
            barrierDismissible: false,
            title: "Registro",
            content: Text("Registro completado con exito"),
            confirm: ElevatedButton(
              child: Text("Continuar"),
              onPressed: () {
                Get.offAllNamed(Routes.LOGIN);
              },
            )));
  }

  void checkRegister(GlobalKey<FormState> formkey) {
    var f = formkey.currentState!.validate();
    if (!f) {
      return;
    } else {
      register();
    }
  }
}
