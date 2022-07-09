import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medicinesystem/app/routes/app_pages.dart';
import 'package:medicinesystem/app/routes/app_routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:medicinesystem/app/ui/utils/colors.dart';
import 'package:medicinesystem/firebase_options.dart';
import 'package:sizer/sizer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

MaterialColor buildMaterialColor(Color color) {
  List strengths = <double>[.05];
  Map<int, Color> swatch = {};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  strengths.forEach((strength) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  });
  return MaterialColor(color.value, swatch);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, devicetype) {
      User? auth = FirebaseAuth.instance.currentUser;
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: auth == null ?Routes.LOGIN : Routes.PACIENTES,
        getPages: AppPages.pages,
        theme: ThemeData(
            primarySwatch: buildMaterialColor(colorprimary),
            primaryColor: colorprimary,
            textTheme: TextTheme(
              
                titleLarge: TextStyle(
                    fontSize: 20,
                    color: colortextsecondary,
                    fontWeight: FontWeight.bold),
                labelSmall: TextStyle(fontSize: 12),
                displaySmall: TextStyle(fontSize: 14,color: colorsecondary),
                headlineSmall:
                    TextStyle(fontSize: 10, fontWeight: FontWeight.bold))),
      );
    });
  }
}
