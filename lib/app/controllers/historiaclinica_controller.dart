import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicinesystem/app/data/auth/auth.dart';

import 'package:medicinesystem/app/data/models/HistoriaClinica_model.dart';
import 'package:medicinesystem/app/data/models/Paciente._model.dart';
import 'package:medicinesystem/app/data/services/HistoriaClinica_service.dart';
import 'package:medicinesystem/app/data/services/altapaciente_service.dart';
import 'package:medicinesystem/app/data/services/api.dart';
import 'package:uuid/uuid.dart';

class HistoriaclinicaController extends GetxController
    with GetSingleTickerProviderStateMixin {
  HistoriaClinicaService historiaClinicaService = new HistoriaClinicaService();
  HistoriaClinica historiaClinica = new HistoriaClinica();
  Auth auth = new Auth();
  late TabController tabController;

  int selectpage = 0;
  AltapacienteService altapacienteService = new AltapacienteService();

  List<Paciente> pacientes = List<Paciente>.empty().obs;
  Rx<RxList<Paciente>> pacien = RxList<Paciente>.empty().obs;

  Rx<Paciente> select = Paciente().obs;
  @override
  void onInit() async {
    // TODO: implement onInit
    super.onInit();
    print(pacientes);
    tabController =
        TabController(length: 6, initialIndex: selectpage, vsync: this);
    tabController.addListener(() {
      if (tabController.indexIsChanging) {
        saveHistoriaMedica();
      }
    });

    pacien.value.value = await altapacienteService.getData(auth.currentUser()!.uid,"pacientes");
    print(pacien.value.value);
    select.value = pacien.value.value[0];
    // pacientes.forEach((element) {
    //   print(element.name);
    // });
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  

  //antecedentes heredofamiliares
  TextEditingController malformacionesController = TextEditingController();
  TextEditingController diabetesMellitusController = TextEditingController();
  TextEditingController hipertensionArterialController =
      TextEditingController();
  TextEditingController epilepsiaController = TextEditingController();
  TextEditingController alergiaController = TextEditingController();
  TextEditingController asmaController = TextEditingController();
  TextEditingController lupusController = TextEditingController();
  TextEditingController enfermedadRenalController = TextEditingController();
  TextEditingController enuresisController = TextEditingController();
  TextEditingController obesidadController = TextEditingController();
  TextEditingController cancerController = TextEditingController();

  //antecedentes personales no patologicos
  TextEditingController casaHabitacionController = TextEditingController();
  TextEditingController materialdeConstruccionController =
      TextEditingController();
  TextEditingController convivenciaConAnimalesController =
      TextEditingController();
  TextEditingController tabaquismoController = TextEditingController();
  TextEditingController cuadroDeVacunacionController = TextEditingController();
  TextEditingController alimentacionController = TextEditingController();
  TextEditingController tipoDeLecheController = TextEditingController();
  TextEditingController practicaDeporte = TextEditingController();

  //desarrollo psicomotor
  TextEditingController sonrisaController = TextEditingController();
  TextEditingController acercamientoController = TextEditingController();
  TextEditingController sedestacionController = TextEditingController();
  TextEditingController deambularController = TextEditingController();
  TextEditingController palabrasReferencialesController =
      TextEditingController();
  TextEditingController frasesExpresionesController = TextEditingController();
  TextEditingController bebeDeLaTazaController = TextEditingController();
  TextEditingController seVisteSoloController = TextEditingController();
  TextEditingController controlDeEsfinteresDiaController =
      TextEditingController();
  TextEditingController controlDeEsfinteresNocheController =
      TextEditingController();

  //antecedentes personales patologicos
  RxString radioHaSidoInternado = "".obs;
  RxString radioFracturasPatologicos = "".obs;
  RxString radioTransfusionesSanguineos = "".obs;
  RxString radioAlergiasMedicamentos = "".obs;
  RxString radioAlergiasAlimentos = "".obs;
  RxString radioInfeccionesViasAreas = "".obs;
  RxString radioInfeccionesViasUrinarias = "".obs;
  RxString radioReaccionesVacuna = "".obs;
  RxString radioCrisisConvulsivasPatalogicos = "".obs;
  RxString radioReflujoGastroesofagicoPatologico = "".obs;
  RxString radioAlcoholismo = "".obs;
  RxString radioTabaquismo = "".obs;
  RxString radioDrogas = "".obs;

  //antecedentes personales no patologicos
  RxString radioConvivenciaAnimalesDomesticos = "".obs;
  RxString radioTabaquismoEnCasa = "".obs;
  RxString radioCuadroDeVacunacion = "".obs;
  RxString radioPracticaAlgunDeporte = "".obs;

  //antecedentes perinatales
  RxString radioAmenazaDeAborto = "".obs;
  RxString radioNinoDeseado = "".obs;
  RxString radioNinoPlaneado = "".obs;
  RxString radioComplicacionDuranteEmbarazo = "".obs;
  RxString radioLloroRespiroAlNacer = "".obs;
  RxString radioEgresoConLaMadre = "".obs;
  RxString radioTarnizAuditivo = "".obs;
  RxString radioVitaminaK = "".obs;
  RxString radioVitaminaA = "".obs;

  TextEditingController haSidoInternadoController = TextEditingController();
  TextEditingController fracturasPatologicosController =
      TextEditingController();
  TextEditingController transfusionesSanguineasController =
      TextEditingController();
  TextEditingController alergiasMedicamentosController =
      TextEditingController();
  TextEditingController alergiasAlimentosController = TextEditingController();
  TextEditingController infeccionesViasAereasController =
      TextEditingController();
  TextEditingController infeccionesViasUrinariasController =
      TextEditingController();
  TextEditingController reaccionesVacunaController = TextEditingController();
  TextEditingController crisisConvulsivasPatologicosController =
      TextEditingController();
  TextEditingController reflujoGastroesofagicoController =
      TextEditingController();

  //adolescentes pacientes mayores a 13 años
  // TextEditingController radioAlcoholismo.value();
  // TextEditingController tabauismoController radioTabaquismo.valuextEditingController();
  // TextEditingController drogasController radioDrogas.valueer();
  TextEditingController inicioDeVidaSexualController = TextEditingController();
  TextEditingController numeroDeParejasController = TextEditingController();

  //antecedentes perinatales
  TextEditingController numeroDeEmbarazoController = TextEditingController();
  TextEditingController visitaMedicoDuranteEmbarazoController =
      TextEditingController();
  TextEditingController amenazaDeAbortoController = TextEditingController();
  TextEditingController ninoDeseadoController = TextEditingController();
  TextEditingController ninoPlaneadoController = TextEditingController();
  TextEditingController complicacionEmbarazoController =
      TextEditingController();
  TextEditingController semanasDeGestacionNacimientoController =
      TextEditingController();
  TextEditingController tipoDePartoController = TextEditingController();
  TextEditingController pesoAlNacerController = TextEditingController();
  TextEditingController tallaAlNacerController = TextEditingController();
  TextEditingController perimetroCefalicoController = TextEditingController();
  TextEditingController lloroRespiroAlNacerController = TextEditingController();
  TextEditingController apgarAlNacimientoController = TextEditingController();
  TextEditingController egresoConLaMadreController = TextEditingController();
  TextEditingController tarnizMetabolicoController = TextEditingController();
  TextEditingController tarnizAuditivoController = TextEditingController();
  TextEditingController vacunasNacimientoController = TextEditingController();
  TextEditingController vitaminaKController = TextEditingController();
  TextEditingController vitaminaAController = TextEditingController();
  TextEditingController perinatalesController = TextEditingController();

  //antecedentes heredofamiliares
  RxString radioMalFormaciones = "".obs;
  RxString radioDiabetesMellitus = "".obs;
  RxString radioHipertensionArterial = "".obs;
  RxString radioEpilepsia = "".obs;
  RxString radioAlergia = "".obs;
  RxString radioAsma = "".obs;
  RxString radioLupus = "".obs;
  RxString radioEnfermedadRenal = "".obs;
  RxString radioEnuresis = "".obs;
  RxString radioObesidad = "".obs;
  RxString radioCancer = "".obs;

  //aparatos y sistemas
  RxString radioTraumatismoCraneoencefalico = "".obs;
  RxString radioCefaleaRecurrente = "".obs;
  RxString radioCrisisConvulsivasNeuroesqueletico = "".obs;
  RxString radioAlteracionMarcha = "".obs;
  RxString radioPerdidaConocimiento = "".obs;
  RxString radioProblemasDeConducta = "".obs;
  RxString radioFracturasNeuroesqueletico = "".obs;
  RxString radioCardioPasma = "".obs;
  RxString radioCardioPInfeccioneViasAreas = "".obs;
  RxString radioCardioPDificultadRespirarAlCaminarLargos = "".obs;
  RxString radioCardioPDificultadRespirarAlCaminarPequenas = "".obs;
  RxString radioCardioPCianosis = "".obs;
  RxString radioCardioPMalformacionCardiaca = "".obs;
  RxString radioReflujoGastroesofagico = "".obs;
  RxString radioIntoleranciaProteinaLeche = "".obs;
  RxString radioDiarreaRecurrente = "".obs;
  RxString radioFaltaIncrementoPesoTalla = "".obs;
  RxString radioEstrenimiento = "".obs;
  RxString radioEvaluacionesSanguinolentas = "".obs;
  RxString radioProblemasParasitosisIntestinal = "".obs;
  RxString radioInfeccionViasUrinariasRecurrentes = "".obs;
  RxString radioMojaLaCamaNoches = "".obs;
  RxString radioDolorAlOrinar = "".obs;
  RxString radioPerdidaDelCabello = "".obs;
  RxString radioErupcionesRecurrentesPiel = "".obs;
  RxString radioPielReseca = "".obs;
  RxString radioRinorreaHialinaRecurrente = "".obs;
  RxString radioHemorragiaNarinasRecurrentes = "".obs;

  TextEditingController traumatismoCraneoencefalicoController =
      TextEditingController();
  TextEditingController cefaleaRecurrenteController = TextEditingController();
  TextEditingController crisisConvulsivasNeuroesqueleticoController =
      TextEditingController();
  TextEditingController alteracionMarchaController = TextEditingController();
  TextEditingController perdidaConocimientoController = TextEditingController();
  TextEditingController problemasDeConductaController = TextEditingController();
  TextEditingController fracturasNeuroesqueleticoController =
      TextEditingController();

  //cardiopulmunar
  TextEditingController cardioPasmaController = TextEditingController();
  TextEditingController cardioPInfeccioneViasAreasController =
      TextEditingController();
  TextEditingController cardioPDificultadRespirarAlCaminarLargosController =
      TextEditingController();
  TextEditingController cardioPDificultadRespirarAlCaminarPequenasController =
      TextEditingController();
  TextEditingController cardioPCianosis = TextEditingController();
  TextEditingController cardioPMalformacionCardiaca = TextEditingController();
  //narinas
  TextEditingController observacionesController = TextEditingController();

  buildSave() {
    historiaClinica.malFormaciones = radioMalFormaciones.value;
    historiaClinica.diabetesMallitus = radioDiabetesMellitus.value;
    historiaClinica.hipertensionArterial = radioHipertensionArterial.value;
    historiaClinica.epilepsia = radioEpilepsia.value;
    historiaClinica.alergia = radioAlergia.value;
    historiaClinica.asma = radioAsma.value;
    historiaClinica.lupus = radioLupus.value;
    historiaClinica.enfermedadRenal = radioEnfermedadRenal.value;
    historiaClinica.enuresis = radioEnuresis.value;
    historiaClinica.obesidad = radioObesidad.value;
    historiaClinica.cancer = radioCancer.value;
    historiaClinica.casaHabitacion = casaHabitacionController.text;
    historiaClinica.materialDeConstruccion =
        materialdeConstruccionController.text;
    historiaClinica.convivenciaConAnimales =
        radioConvivenciaAnimalesDomesticos.value;
    historiaClinica.tabaquismo = radioTabaquismoEnCasa.value;
    historiaClinica.cuadrpDeVacunacion = radioCuadroDeVacunacion.value;
    historiaClinica.alimentacion = alimentacionController.text;
    historiaClinica.tipoDeLeche = tipoDeLecheController.text;
    historiaClinica.practicaDeporte = radioPracticaAlgunDeporte.value;
    historiaClinica.sonrisa = sonrisaController.text;
    historiaClinica.acercamiento = acercamientoController.text;
    historiaClinica.sedestacion = sedestacionController.text;
    historiaClinica.deambular = deambularController.text;
    historiaClinica.palabrasReferenciales =
        palabrasReferencialesController.text;
    historiaClinica.frasesExpresiones = frasesExpresionesController.text;
    historiaClinica.bebeDeLaTaza = bebeDeLaTazaController.text;
    historiaClinica.seVisteSolo = seVisteSoloController.text;
    historiaClinica.controlDeEsfinteresDia =
        controlDeEsfinteresDiaController.text;
    historiaClinica.controlDeEsfinteresNochhe =
        controlDeEsfinteresNocheController.text;
    historiaClinica.haSidoInternado = radioHaSidoInternado.value;
    historiaClinica.fracturasPatologicos = radioFracturasPatologicos.value;
    historiaClinica.transfusionesSanguineas =
        radioTransfusionesSanguineos.value;

    historiaClinica.alergiasAlimentos = radioAlergiasAlimentos.value;
    historiaClinica.infeccionesViasAereas = radioInfeccionesViasAreas.value;
    historiaClinica.infeccionesViasUrinarias =
        radioInfeccionesViasUrinarias.value;
    historiaClinica.reaccionesVacuna = radioReaccionesVacuna.value;
    historiaClinica.crisisConvulsivas = radioCrisisConvulsivasPatalogicos.value;
    historiaClinica.reflujoGastroesofagico = radioReflujoGastroesofagico.value;
    historiaClinica.alcoholismo = radioAlcoholismo.value;
    historiaClinica.tabaquismo = radioTabaquismo.value;
    historiaClinica.drogas = radioDrogas.value;
    historiaClinica.inicioDeVidaSexual = inicioDeVidaSexualController.text;
    historiaClinica.numeroDeParejas = numeroDeParejasController.text;
    historiaClinica.numeroDeEmbarazo = numeroDeEmbarazoController.text;
    historiaClinica.visitaMedicoDuranteEmbarazo =
        visitaMedicoDuranteEmbarazoController.text;
    historiaClinica.amenazaDeAborto = radioAmenazaDeAborto.value;
    historiaClinica.ninoDeseado = radioNinoDeseado.value;
    historiaClinica.ninoPlaneado = radioNinoPlaneado.value;
    historiaClinica.complicacionEmbarazo =
        radioComplicacionDuranteEmbarazo.value;
    historiaClinica.semanasDeGestacionNacimiento =
        semanasDeGestacionNacimientoController.text;
    historiaClinica.tipoDeParto = tipoDePartoController.text;
    historiaClinica.pesoAlNacer = pesoAlNacerController.text;
    historiaClinica.tallaAlNacer = tallaAlNacerController.text;
    historiaClinica.perimetroCefalico = perimetroCefalicoController.text;
    historiaClinica.lloroRespiroAlNacer = radioLloroRespiroAlNacer.value;
    historiaClinica.apgarAlNacimientos = apgarAlNacimientoController.text;
    historiaClinica.egresoConLaMadre = radioEgresoConLaMadre.value;
    historiaClinica.tarnizMetabolico = tarnizMetabolicoController.text;
    historiaClinica.tarnizAuditivo = radioTarnizAuditivo.value;
    historiaClinica.vacunasNacimiento = vacunasNacimientoController.text;
    historiaClinica.vitaminaK = radioVitaminaK.value;
    historiaClinica.vitaminaA = radioVitaminaA.value;
    historiaClinica.perinatales = perinatalesController.text;
    historiaClinica.traumatismoCraneoencefalico =
        radioTraumatismoCraneoencefalico.value;
    historiaClinica.cefaleaRecurrente = radioCefaleaRecurrente.value;
    historiaClinica.crisisConvulsivas = radioCrisisConvulsivasPatalogicos.value;
    historiaClinica.crisisConvulsivasNeuroesqueletico =
        radioCrisisConvulsivasNeuroesqueletico.value;
    historiaClinica.alteracionMarcha = radioAlteracionMarcha.value;
    historiaClinica.perdidaConocimiento = radioPerdidaConocimiento.value;
    historiaClinica.problemasDeConducta = radioProblemasDeConducta.value;
    historiaClinica.fracturasNeuroesqueletico =
        radioFracturasNeuroesqueletico.value;
    historiaClinica.asma = radioAsma.value;
    historiaClinica.cardioPasma = radioCardioPasma.value;
    historiaClinica.infeccionesViasAereas =
        radioCardioPInfeccioneViasAreas.value;
    historiaClinica.cardioPDificultadRespirarAlCaminarLargos =
        radioCardioPDificultadRespirarAlCaminarLargos.value;
    historiaClinica.cardioPDificultadRespirarAlCaminarPequenas =
        radioCardioPDificultadRespirarAlCaminarPequenas.value;
    historiaClinica.cardioPInfeccioneViasAreas =
        radioCardioPInfeccioneViasAreas.value;
    historiaClinica.infeccionesViasAereas = radioInfeccionesViasAreas.value;
    historiaClinica.cardioPCianosis = radioCardioPCianosis.value;
    historiaClinica.cardioPMalformacionCardiaca =
        radioCardioPMalformacionCardiaca.value;
    historiaClinica.reflujoGastroesofagico = radioReflujoGastroesofagico.value;
    historiaClinica.intoleranciaProteinaLeche =
        radioIntoleranciaProteinaLeche.value;
    historiaClinica.diarreaRecurrente = radioDiarreaRecurrente.value;
    historiaClinica.faltaDeIncrementoPesoTalla =
        radioFaltaIncrementoPesoTalla.value;
    historiaClinica.estrenimiento = radioEstrenimiento.value;
    historiaClinica.evacuacionesSanguinolentas =
        radioEvaluacionesSanguinolentas.value;
    historiaClinica.problemasDeParasitosis =
        radioProblemasParasitosisIntestinal.value;
    historiaClinica.cursadoInfeccionViasUrinarias =
        radioInfeccionViasUrinariasRecurrentes.value;
    historiaClinica.mojaCamaNoches = radioMojaLaCamaNoches.value;
    historiaClinica.dolorAlOrinar = radioDolorAlOrinar.value;
    historiaClinica.perdidaDelCabello = radioErupcionesRecurrentesPiel.value;
    historiaClinica.erupcionesRecurrentePiel =
        radioErupcionesRecurrentesPiel.value;
    historiaClinica.pielReseca = radioPielReseca.value;
    historiaClinica.rinorreaHialinaRecurrente =
        radioRinorreaHialinaRecurrente.value;
    historiaClinica.hemorragiaNarinasRecurrentes =
        radioHemorragiaNarinasRecurrentes.value;
    historiaClinica.narinasObservaciones = observacionesController.text;
    historiaClinica.tabauismo = radioTabaquismoEnCasa.value;
  }

  setData() async {
    var id = auth.currentUser()!.uid;
    var data = await historiaClinicaService.getData(
        id, "historiaClinica", select.value.email!);
    print(data.data() );
    if (data.data() == null) {
      print("joel");
      radioMalFormaciones.value = "";

      radioDiabetesMellitus.value = "";
      radioHipertensionArterial.value = "";
      radioEpilepsia.value = "";
      radioAlergia.value = "";

      radioAsma.value = "";
      radioLupus.value = "";
      radioEnfermedadRenal.value = "";
      radioEnuresis.value = "";
      radioObesidad.value = "";
      radioCancer.value = "";
      casaHabitacionController.text = "";
      materialdeConstruccionController.text =
          "";
      radioConvivenciaAnimalesDomesticos.value =
          "";
      radioTabaquismoEnCasa.value = "";
      radioCuadroDeVacunacion.value = "";

      alimentacionController.text = "";
      tipoDeLecheController.text = "";
      radioPracticaAlgunDeporte.value = "";
      sonrisaController.text = "";
      acercamientoController.text = "";
      sedestacionController.text = "";
      deambularController.text = "";
      palabrasReferencialesController.text = "";
      frasesExpresionesController.text = "";
      bebeDeLaTazaController.text = "";
      seVisteSoloController.text = "";
      controlDeEsfinteresDiaController.text =
          "";
      controlDeEsfinteresNocheController.text =
          "";
      radioHaSidoInternado.value = "";
      radioFracturasPatologicos.value = "";
      radioTransfusionesSanguineos.value = "";

      radioAlergiasAlimentos.value = "";
      radioInfeccionesViasAreas.value = "";
      radioInfeccionesViasUrinarias.value =
          "";
      radioReaccionesVacuna.value = "";

      radioCrisisConvulsivasPatalogicos.value = "";
      radioReflujoGastroesofagico.value = "";
      radioAlcoholismo.value = "";
      radioTabaquismo.value = "";
      radioDrogas.value = "";
      inicioDeVidaSexualController.text = "";
      numeroDeParejasController.text = "";
      numeroDeEmbarazoController.text = "";
      visitaMedicoDuranteEmbarazoController.text =
          "";
      radioAmenazaDeAborto.value = "";
      radioNinoDeseado.value = "";
      radioNinoPlaneado.value = "";
      radioComplicacionDuranteEmbarazo.value = "";
      semanasDeGestacionNacimientoController.text =
          "";
      tipoDePartoController.text = "";
      pesoAlNacerController.text = "";
      tallaAlNacerController.text = "";
      perimetroCefalicoController.text = "";
      radioLloroRespiroAlNacer.value = "";
      apgarAlNacimientoController.text = "";
      radioEgresoConLaMadre.value = "";
      tarnizMetabolicoController.text = "";
      radioTarnizAuditivo.value = "";

      vacunasNacimientoController.text = "";
      radioVitaminaK.value = "";
      radioVitaminaA.value = "";
      perinatalesController.text = "";
      radioTraumatismoCraneoencefalico.value =
          "";
      radioCefaleaRecurrente.value = "";
      radioCrisisConvulsivasNeuroesqueletico.value =
          "";
      radioAlteracionMarcha.value = "";
      radioPerdidaConocimiento.value = "";
      radioProblemasDeConducta.value = "";
      radioFracturasNeuroesqueletico.value =
          "";
      radioCardioPasma.value = "";
      radioCardioPInfeccioneViasAreas.value =
          "";
      radioCardioPDificultadRespirarAlCaminarLargos.value =
          "";
      radioCardioPDificultadRespirarAlCaminarPequenas.value =
          "";
      radioCardioPCianosis.value = "";
      radioCardioPMalformacionCardiaca.value =
          "";

      radioIntoleranciaProteinaLeche.value =
          "";
      radioDiarreaRecurrente.value = "";
      radioFaltaIncrementoPesoTalla.value =
          "";
      radioEstrenimiento.value = "";
      radioEvaluacionesSanguinolentas.value =
          "";
      radioProblemasParasitosisIntestinal.value =
          "";
      radioInfeccionViasUrinariasRecurrentes.value =
          "";
      radioMojaLaCamaNoches.value = "";
      radioDolorAlOrinar.value = "";
      radioErupcionesRecurrentesPiel.value = "";
      radioErupcionesRecurrentesPiel.value =
          "";
      radioPielReseca.value = "";
      radioRinorreaHialinaRecurrente.value =
          "";
      radioHemorragiaNarinasRecurrentes.value =
          "";
      observacionesController.text = "";
    } else {
      radioMalFormaciones.value = data.get("malFormaciones");

      radioDiabetesMellitus.value = data.get("diabetesMallitus");
      radioHipertensionArterial.value = data.get("hipertensionArterial");
      radioEpilepsia.value = data.get("epilepsia");
      radioAlergia.value = data.get("alergia");

      radioAsma.value = data.get("asma");
      radioLupus.value = data.get("lupus");
      radioEnfermedadRenal.value = data.get("enfermedadRenal");
      radioEnuresis.value = data.get("enuresis");
      radioObesidad.value = data.get("obesidad");
      radioCancer.value = data.get("cancer");
      casaHabitacionController.text = data.get("casaHabitacion");
      materialdeConstruccionController.text =
          data.get("materialDeConstruccion");
      radioConvivenciaAnimalesDomesticos.value =
          data.get("convivenciaConAnimales");
      radioTabaquismoEnCasa.value = data.get("tabaquismo");
      radioCuadroDeVacunacion.value = data.get("cuadrpDeVacunacion");

      alimentacionController.text = data.get("alimentacion");
      tipoDeLecheController.text = data.get("tipoDeLeche");
      radioPracticaAlgunDeporte.value = data.get("practicaDeporte");
      sonrisaController.text = data.get("sonrisa");
      acercamientoController.text = data.get("acercamiento");
      sedestacionController.text = data.get("sedestacion");
      deambularController.text = data.get("deambular");
      palabrasReferencialesController.text = data.get("palabrasReferenciales");
      frasesExpresionesController.text = data.get("frasesExpresiones");
      bebeDeLaTazaController.text = data.get("bebeDeLaTaza");
      seVisteSoloController.text = data.get("seVisteSolo");
      controlDeEsfinteresDiaController.text =
          data.get("controlDeEsfinteresDia");
      controlDeEsfinteresNocheController.text =
          data.get("controlDeEsfinteresNochhe");
      radioHaSidoInternado.value = data.get("haSidoInternado");
      radioFracturasPatologicos.value = data.get("fracturasPatologicos");
      radioTransfusionesSanguineos.value = data.get("transfusionesSanguineas");

      radioAlergiasAlimentos.value = data.get("alergiasAlimentos");
      radioInfeccionesViasAreas.value = data.get("infeccionesViasAereas");
      radioInfeccionesViasUrinarias.value =
          data.get("infeccionesViasUrinarias");
      radioReaccionesVacuna.value = data.get("reaccionesVacuna");

      radioCrisisConvulsivasPatalogicos.value = data.get("crisisConvulsivas");
      radioReflujoGastroesofagico.value = data.get("reflujoGastroesofagico");
      radioAlcoholismo.value = data.get("alcoholismo");
      radioTabaquismo.value = data.get("tabauismo");
      radioDrogas.value = data.get("drogas");
      inicioDeVidaSexualController.text = data.get("inicioDeVidaSexual");
      numeroDeParejasController.text = data.get("numeroDeParejas");
      numeroDeEmbarazoController.text = data.get("numeroDeEmbarazo");
      visitaMedicoDuranteEmbarazoController.text =
          data.get("visitaMedicoDuranteEmbarazo");
      radioAmenazaDeAborto.value = data.get("amenazaDeAborto");
      radioNinoDeseado.value = data.get("ninoDeseado");
      radioNinoPlaneado.value = data.get("ninoPlaneado");
      radioComplicacionDuranteEmbarazo.value = data.get("complicacionEmbarazo");
      semanasDeGestacionNacimientoController.text =
          data.get("semanasDeGestacionNacimiento");
      tipoDePartoController.text = data.get("tipoDeParto");
      pesoAlNacerController.text = data.get("pesoAlNacer");
      tallaAlNacerController.text = data.get("tallaAlNacer");
      perimetroCefalicoController.text = data.get("perimetroCefalico");
      radioLloroRespiroAlNacer.value = data.get("lloroRespiroAlNacer");
      apgarAlNacimientoController.text = data.get("apgarAlNacimientos");
      radioEgresoConLaMadre.value = data.get("egresoConLaMadre");
      tarnizMetabolicoController.text = data.get("tarnizMetabolico");
      radioTarnizAuditivo.value = data.get("tarnizAuditivo");

      vacunasNacimientoController.text = data.get("vacunasNacimiento");
      radioVitaminaK.value = data.get("vitaminaK");
      radioVitaminaA.value = data.get("vitaminaA");
      perinatalesController.text = data.get("perinatales");
      radioTraumatismoCraneoencefalico.value =
          data.get("traumatismoCraneoencefalico");
      radioCefaleaRecurrente.value = data.get("cefaleaRecurrente");
      radioCrisisConvulsivasNeuroesqueletico.value =
          data.get("crisisConvulsivasNeuroesqueletico");
      radioAlteracionMarcha.value = data.get("alteracionMarcha");
      radioPerdidaConocimiento.value = data.get("perdidaConocimiento");
      radioProblemasDeConducta.value = data.get("problemasDeConducta");
      radioFracturasNeuroesqueletico.value =
          data.get("fracturasNeuroesqueletico");
      radioCardioPasma.value = data.get("cardioPasma");
      radioCardioPInfeccioneViasAreas.value =
          data.get("cardioPInfeccioneViasAreas");
      radioCardioPDificultadRespirarAlCaminarLargos.value =
          data.get("cardioPDificultadRespirarAlCaminarLargos");
      radioCardioPDificultadRespirarAlCaminarPequenas.value =
          data.get("cardioPDificultadRespirarAlCaminarPequenas");
      radioCardioPCianosis.value = data.get("cardioPCianosis");
      radioCardioPMalformacionCardiaca.value =
          data.get("cardioPMalformacionCardiaca");

      radioIntoleranciaProteinaLeche.value =
          data.get("intoleranciaProteinaLeche");
      radioDiarreaRecurrente.value = data.get("diarreaRecurrente");
      radioFaltaIncrementoPesoTalla.value =
          data.get("faltaDeIncrementoPesoTalla");
      radioEstrenimiento.value = data.get("estrenimiento");
      radioEvaluacionesSanguinolentas.value =
          data.get("evacuacionesSanguinolentas");
      radioProblemasParasitosisIntestinal.value =
          data.get("problemasDeParasitosis");
      radioInfeccionViasUrinariasRecurrentes.value =
          data.get("cursadoInfeccionViasUrinarias");
      radioMojaLaCamaNoches.value = data.get("mojaCamaNoches");
      radioDolorAlOrinar.value = data.get("dolorAlOrinar");
      radioErupcionesRecurrentesPiel.value = data.get("perdidaDelCabello");
      radioErupcionesRecurrentesPiel.value =
          data.get("erupcionesRecurrentePiel");
      radioPielReseca.value = data.get("pielReseca");
      radioRinorreaHialinaRecurrente.value =
          data.get("rinorreaHialinaRecurrente");
      radioHemorragiaNarinasRecurrentes.value =
          data.get("hemorragiaNarinasRecurrentes");
      observacionesController.text = data.get("narinasObservaciones");
    }

   
  }

  saveHistoriaMedica() {
    buildSave();
    // var id = Uuid().v1();
    var id = auth.currentUser()!.uid;
    historiaClinicaService.save(
        id, "historiaClinica", select.value.email!, historiaClinica);
  }
}
