import 'package:get/get.dart';
import 'package:medicinesystem/app/bindings/agenda_binding.dart';
import 'package:medicinesystem/app/bindings/altapaciente_binding.dart';
import 'package:medicinesystem/app/bindings/configuracion_binding.dart';
import 'package:medicinesystem/app/bindings/consulta_binding.dart';
import 'package:medicinesystem/app/bindings/consultamedica_binding.dart';
import 'package:medicinesystem/app/bindings/detailspaciente_binding.dart';
import 'package:medicinesystem/app/bindings/historiaclinica_binding.dart';
import 'package:medicinesystem/app/bindings/login_binding.dart';
import 'package:medicinesystem/app/bindings/pagos_binding.dart';
import 'package:medicinesystem/app/bindings/register_binding.dart';
import 'package:medicinesystem/app/bindings/reportes_binding.dart';
import 'package:medicinesystem/app/routes/app_pages.dart';
import 'package:medicinesystem/app/ui/pages/agenda_page/agenda_page.dart';
import 'package:medicinesystem/app/ui/pages/configuracion_page/configuracion_page.dart';
import 'package:medicinesystem/app/ui/pages/consulta_page/consulta_page.dart';
import 'package:medicinesystem/app/ui/pages/consultamedica_page/consultamedica_page.dart';
import 'package:medicinesystem/app/ui/pages/detailspaciente_page/detailspaciente_page.dart';
import 'package:medicinesystem/app/ui/pages/historiaclinica_page/historiaclinica_page.dart';
import 'package:medicinesystem/app/ui/pages/login_page/login_page.dart';
import 'package:medicinesystem/app/ui/pages/pacientes_page/pacientes_page.dart';
import 'package:medicinesystem/app/ui/pages/pacientes_page/widgets/formaltapaciente.dart';
import 'package:medicinesystem/app/ui/pages/pagos_page/pagos_page.dart';
import 'package:medicinesystem/app/ui/pages/register_page/register_page.dart';
import 'package:medicinesystem/app/ui/pages/reportes_page/reportes_page.dart';

abstract class AppPages {
  static final pages = [
    GetPage(name: Routes.LOGIN, page:()=> LoginPage(), binding:LoginBinding() ),
    GetPage(name: Routes.REGISTER, page:()=> RegisterPage(), binding:RegisterBinding() ),
    GetPage(
        name: Routes.PACIENTES,
        page: () => PacientesPage(),
        binding: ConsultaBinding(),
        transition: Transition.fadeIn,
        children: [
          GetPage(
              name: Routes.ALTAPACIENTE,
              page: () => Altapacienteform(),
              binding: AltapacienteBinding(),
              transition: Transition.fadeIn),
          GetPage(
              name: Routes.DETAILSPACIENTE,
              page: () => DetailspacientePage(),
              binding: DetailspacienteBinding(),
              transition: Transition.fadeIn,),
        ]),
    GetPage(
        name: Routes.CONSULTA,
        page: () => ConsultaPage(),
        binding: ConsultaBinding(),
        transition: Transition.fadeIn,
        children: [
          GetPage(name: Routes.CONSULTAMEDICA ,
           page:()=> ConsultamedicaPage(), 
           binding:ConsultamedicaBinding(),
           transition: Transition.fadeIn, ),
        ]
        ),
    GetPage(
        name: Routes.HISTORIACLINICA,
        page: () => HistoriaclinicaPage(),
        binding: HistoriaclinicaBinding(),
        transition: Transition.fadeIn),
    GetPage(
        name: Routes.REPORTES,
        page: () => ReportesPage(),
        binding: ReportesBinding(),
        transition: Transition.fadeIn),
    GetPage(
        name: Routes.AGENDA,
        page: () => AgendaPage(),
        binding: AgendaBinding(),
        transition: Transition.fadeIn),
    GetPage(
        name: Routes.PAGOS,
        page: () => PagosPage(),
        binding: PagosBinding(),
        transition: Transition.fadeIn),
    GetPage(
        name: Routes.CONFIGURACION,
        page: () => ConfiguracionPage(),
        binding: ConfiguracionBinding(),
        transition: Transition.fadeIn),
  ];
}
