class HistoriaClinica {
  String? id;
  String? idPaciente;
  String? malFormaciones;
  String? diabetesMallitus;
  String? hipertensionArterial;
  String? epilepsia;
  String? alergia;
  String? asma;
  String? lupus;
  String? enfermedadRenal;
  String? enuresis;
  String? obesidad;
  String? cancer;
  String? casaHabitacion;
  String? materialDeConstruccion;
  String? convivenciaConAnimales;
  String? tabaquismo;
  String? cuadrpDeVacunacion;
  String? alimentacion;
  String? tipoDeLeche;
  String? practicaDeporte;
  String? sonrisa;
  String? acercamiento;
  String? sedestacion;
  String? deambular;
  String? palabrasReferenciales;
  String? frasesExpresiones;
  String? bebeDeLaTaza;
  String? seVisteSolo;
  String? controlDeEsfinteresDia;
  String? controlDeEsfinteresNochhe;
  String? haSidoInternado;
  String? fracturasPatologicos;
  String? transfusionesSanguineas;
  String? alergiasAlimentos;
  String? infeccionesViasAereas;
  String? infeccionesViasUrinarias;
  String? reaccionesVacuna;
  String? crisisConvulsivas;
  String? reflujoGastroesofagico;
  String? alcoholismo;
  String? tabauismo;
  String? drogas;
  String? inicioDeVidaSexual;
  String? numeroDeParejas;
  String? numeroDeEmbarazo;
  String? visitaMedicoDuranteEmbarazo;
  String? amenazaDeAborto;
  String? ninoDeseado;
  String? ninoPlaneado;
  String? complicacionEmbarazo;
  String? semanasDeGestacionNacimiento;
  String? tipoDeParto;
  String? pesoAlNacer;
  String? tallaAlNacer;
  String? perimetroCefalico;
  String? lloroRespiroAlNacer;
  String? apgarAlNacimientos;
  String? egresoConLaMadre;
  String? tarnizMetabolico;
  String? tarnizAuditivo;
  String? vacunasNacimiento;
  String? vitaminaK;
  String? vitaminaA;
  String? perinatales;
  String? traumatismoCraneoencefalico;
  String? cefaleaRecurrente;
  String? crisisConvulsivasNeuroesqueletico;
  String? alteracionMarcha;
  String? perdidaConocimiento;
  String? problemasDeConducta;
  String? fracturasNeuroesqueletico;
  String? cardioPasma;
  String? cardioPInfeccioneViasAreas;
  String? cardioPDificultadRespirarAlCaminarLargos;
  String? cardioPDificultadRespirarAlCaminarPequenas;
  String? cardioPCianosis;
  String? cardioPMalformacionCardiaca;
  String? intoleranciaProteinaLeche;
  String? diarreaRecurrente;
  String? faltaDeIncrementoPesoTalla;
  String? estrenimiento;
  String? evacuacionesSanguinolentas;
  String? problemasDeParasitosis;
  String? cursadoInfeccionViasUrinarias;
  String? mojaCamaNoches;
  String? dolorAlOrinar;
  String? perdidaDelCabello;
  String? erupcionesRecurrentePiel;
  String? pielReseca;
  String? rinorreaHialinaRecurrente;
  String? hemorragiaNarinasRecurrentes;
  String? narinasObservaciones;

  HistoriaClinica(
      {this.id,
      this.idPaciente,
      this.malFormaciones,
      this.diabetesMallitus,
      this.hipertensionArterial,
      this.epilepsia,
      this.alergia,
      this.asma,
      this.lupus,
      this.enfermedadRenal,
      this.enuresis,
      this.obesidad,
      this.cancer,
      this.casaHabitacion,
      this.materialDeConstruccion,
      this.convivenciaConAnimales,
      this.tabaquismo,
      this.cuadrpDeVacunacion,
      this.alimentacion,
      this.tipoDeLeche,
      this.practicaDeporte,
      this.sonrisa,
      this.acercamiento,
      this.sedestacion,
      this.deambular,
      this.palabrasReferenciales,
      this.frasesExpresiones,
      this.bebeDeLaTaza,
      this.seVisteSolo,
      this.controlDeEsfinteresDia,
      this.controlDeEsfinteresNochhe,
      this.haSidoInternado,
      this.fracturasPatologicos,
      this.transfusionesSanguineas,
      this.alergiasAlimentos,
      this.infeccionesViasAereas,
      this.infeccionesViasUrinarias,
      this.reaccionesVacuna,
      this.crisisConvulsivas,
      this.reflujoGastroesofagico,
      this.alcoholismo,
      this.tabauismo,
      this.drogas,
      this.inicioDeVidaSexual,
      this.numeroDeParejas,
      this.numeroDeEmbarazo,
      this.visitaMedicoDuranteEmbarazo,
      this.amenazaDeAborto,
      this.ninoDeseado,
      this.ninoPlaneado,
      this.complicacionEmbarazo,
      this.semanasDeGestacionNacimiento,
      this.tipoDeParto,
      this.pesoAlNacer,
      this.tallaAlNacer,
      this.perimetroCefalico,
      this.lloroRespiroAlNacer,
      this.apgarAlNacimientos,
      this.egresoConLaMadre,
      this.tarnizMetabolico,
      this.tarnizAuditivo,
      this.vacunasNacimiento,
      this.vitaminaK,
      this.vitaminaA,
      this.perinatales,
      this.traumatismoCraneoencefalico,
      this.cefaleaRecurrente,
      this.crisisConvulsivasNeuroesqueletico,
      this.alteracionMarcha,
      this.perdidaConocimiento,
      this.problemasDeConducta,
      this.fracturasNeuroesqueletico,
      this.cardioPasma,
      this.cardioPInfeccioneViasAreas,
      this.cardioPDificultadRespirarAlCaminarLargos,
      this.cardioPDificultadRespirarAlCaminarPequenas,
      this.cardioPCianosis,
      this.cardioPMalformacionCardiaca,
      this.intoleranciaProteinaLeche,
      this.diarreaRecurrente,
      this.faltaDeIncrementoPesoTalla,
      this.estrenimiento,
      this.evacuacionesSanguinolentas,
      this.problemasDeParasitosis,
      this.cursadoInfeccionViasUrinarias,
      this.mojaCamaNoches,
      this.dolorAlOrinar,
      this.perdidaDelCabello,
      this.erupcionesRecurrentePiel,
      this.pielReseca,
      this.rinorreaHialinaRecurrente,
      this.hemorragiaNarinasRecurrentes,
      this.narinasObservaciones});

  HistoriaClinica.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    idPaciente = json['idPaciente'];
    malFormaciones = json['malFormaciones'];
    diabetesMallitus = json['diabetesMallitus'];
    hipertensionArterial = json['hipertensionArterial'];
    epilepsia = json['epilepsia'];
    alergia = json['alergia'];
    asma = json['asma'];
    lupus = json['lupus'];
    enfermedadRenal = json['enfermedadRenal'];
    enuresis = json['enuresis'];
    obesidad = json['obesidad'];
    cancer = json['cancer'];
    casaHabitacion = json['casaHabitacion'];
    materialDeConstruccion = json['materialDeConstruccion'];
    convivenciaConAnimales = json['convivenciaConAnimales'];
    tabaquismo = json['tabaquismo'];
    cuadrpDeVacunacion = json['cuadrpDeVacunacion'];
    alimentacion = json['alimentacion'];
    tipoDeLeche = json['tipoDeLeche'];
    practicaDeporte = json['practicaDeporte'];
    sonrisa = json['sonrisa'];
    acercamiento = json['acercamiento'];
    sedestacion = json['sedestacion'];
    deambular = json['deambular'];
    palabrasReferenciales = json['palabrasReferenciales'];
    frasesExpresiones = json['frasesExpresiones'];
    bebeDeLaTaza = json['bebeDeLaTaza'];
    seVisteSolo = json['seVisteSolo'];
    controlDeEsfinteresDia = json['controlDeEsfinteresDia'];
    controlDeEsfinteresNochhe = json['controlDeEsfinteresNochhe'];
    haSidoInternado = json['haSidoInternado'];
    fracturasPatologicos = json['fracturasPatologicos'];
    transfusionesSanguineas = json['transfusionesSanguineas'];
    alergiasAlimentos = json['alergiasAlimentos'];
    infeccionesViasAereas = json['infeccionesViasAereas'];
    infeccionesViasUrinarias = json['infeccionesViasUrinarias'];
    reaccionesVacuna = json['reaccionesVacuna'];
    crisisConvulsivas = json['crisisConvulsivas'];
    reflujoGastroesofagico = json['reflujoGastroesofagico'];
    alcoholismo = json['alcoholismo'];
    tabauismo = json['tabauismo'];
    drogas = json['drogas'];
    inicioDeVidaSexual = json['inicioDeVidaSexual'];
    numeroDeParejas = json['numeroDeParejas'];
    numeroDeEmbarazo = json['numeroDeEmbarazo'];
    visitaMedicoDuranteEmbarazo = json['visitaMedicoDuranteEmbarazo'];
    amenazaDeAborto = json['amenazaDeAborto'];
    ninoDeseado = json['ninoDeseado'];
    ninoPlaneado = json['ninoPlaneado'];
    complicacionEmbarazo = json['complicacionEmbarazo'];
    semanasDeGestacionNacimiento = json['semanasDeGestacionNacimiento'];
    tipoDeParto = json['tipoDeParto'];
    pesoAlNacer = json['pesoAlNacer'];
    tallaAlNacer = json['tallaAlNacer'];
    perimetroCefalico = json['perimetroCefalico'];
    lloroRespiroAlNacer = json['lloroRespiroAlNacer'];
    apgarAlNacimientos = json['apgarAlNacimientos'];
    egresoConLaMadre = json['egresoConLaMadre'];
    tarnizMetabolico = json['tarnizMetabolico'];
    tarnizAuditivo = json['tarnizAuditivo'];
    vacunasNacimiento = json['vacunasNacimiento'];
    vitaminaK = json['vitaminaK'];
    vitaminaA = json['vitaminaA'];
    perinatales = json['perinatales'];
    traumatismoCraneoencefalico = json['traumatismoCraneoencefalico'];
    cefaleaRecurrente = json['cefaleaRecurrente'];
    crisisConvulsivasNeuroesqueletico =
        json['crisisConvulsivasNeuroesqueletico'];
    alteracionMarcha = json['alteracionMarcha'];
    perdidaConocimiento = json['perdidaConocimiento'];
    problemasDeConducta = json['problemasDeConducta'];
    fracturasNeuroesqueletico = json['fracturasNeuroesqueletico'];
    cardioPasma = json['cardioPasma'];
    cardioPInfeccioneViasAreas = json['cardioPInfeccioneViasAreas'];
    cardioPDificultadRespirarAlCaminarLargos =
        json['cardioPDificultadRespirarAlCaminarLargos'];
    cardioPDificultadRespirarAlCaminarPequenas =
        json['cardioPDificultadRespirarAlCaminarPequenas'];
    cardioPCianosis = json['cardioPCianosis'];
    cardioPMalformacionCardiaca = json['cardioPMalformacionCardiaca'];
    intoleranciaProteinaLeche = json['intoleranciaProteinaLeche'];
    diarreaRecurrente = json['diarreaRecurrente'];
    faltaDeIncrementoPesoTalla = json['faltaDeIncrementoPesoTalla'];
    estrenimiento = json['estrenimiento'];
    evacuacionesSanguinolentas = json['evacuacionesSanguinolentas'];
    problemasDeParasitosis = json['problemasDeParasitosis'];
    cursadoInfeccionViasUrinarias = json['cursadoInfeccionViasUrinarias'];
    mojaCamaNoches = json['mojaCamaNoches'];
    dolorAlOrinar = json['dolorAlOrinar'];
    perdidaDelCabello = json['perdidaDelCabello'];
    erupcionesRecurrentePiel = json['erupcionesRecurrentePiel'];
    pielReseca = json['pielReseca'];
    rinorreaHialinaRecurrente = json['rinorreaHialinaRecurrente'];
    hemorragiaNarinasRecurrentes = json['hemorragiaNarinasRecurrentes'];
    narinasObservaciones = json['narinasObservaciones'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['idPaciente'] = this.idPaciente;
    data['malFormaciones'] = this.malFormaciones;
    data['diabetesMallitus'] = this.diabetesMallitus;
    data['hipertensionArterial'] = this.hipertensionArterial;
    data['epilepsia'] = this.epilepsia;
    data['alergia'] = this.alergia;
    data['asma'] = this.asma;
    data['lupus'] = this.lupus;
    data['enfermedadRenal'] = this.enfermedadRenal;
    data['enuresis'] = this.enuresis;
    data['obesidad'] = this.obesidad;
    data['cancer'] = this.cancer;
    data['casaHabitacion'] = this.casaHabitacion;
    data['materialDeConstruccion'] = this.materialDeConstruccion;
    data['convivenciaConAnimales'] = this.convivenciaConAnimales;
    data['tabaquismo'] = this.tabaquismo;
    data['cuadrpDeVacunacion'] = this.cuadrpDeVacunacion;
    data['alimentacion'] = this.alimentacion;
    data['tipoDeLeche'] = this.tipoDeLeche;
    data['practicaDeporte'] = this.practicaDeporte;
    data['sonrisa'] = this.sonrisa;
    data['acercamiento'] = this.acercamiento;
    data['sedestacion'] = this.sedestacion;
    data['deambular'] = this.deambular;
    data['palabrasReferenciales'] = this.palabrasReferenciales;
    data['frasesExpresiones'] = this.frasesExpresiones;
    data['bebeDeLaTaza'] = this.bebeDeLaTaza;
    data['seVisteSolo'] = this.seVisteSolo;
    data['controlDeEsfinteresDia'] = this.controlDeEsfinteresDia;
    data['controlDeEsfinteresNochhe'] = this.controlDeEsfinteresNochhe;
    data['haSidoInternado'] = this.haSidoInternado;
    data['fracturasPatologicos'] = this.fracturasPatologicos;
    data['transfusionesSanguineas'] = this.transfusionesSanguineas;
    data['alergiasAlimentos'] = this.alergiasAlimentos;
    data['infeccionesViasAereas'] = this.infeccionesViasAereas;
    data['infeccionesViasUrinarias'] = this.infeccionesViasUrinarias;
    data['reaccionesVacuna'] = this.reaccionesVacuna;
    data['crisisConvulsivas'] = this.crisisConvulsivas;
    data['reflujoGastroesofagico'] = this.reflujoGastroesofagico;
    data['alcoholismo'] = this.alcoholismo;
    data['tabauismo'] = this.tabauismo;
    data['drogas'] = this.drogas;
    data['inicioDeVidaSexual'] = this.inicioDeVidaSexual;
    data['numeroDeParejas'] = this.numeroDeParejas;
    data['numeroDeEmbarazo'] = this.numeroDeEmbarazo;
    data['visitaMedicoDuranteEmbarazo'] = this.visitaMedicoDuranteEmbarazo;
    data['amenazaDeAborto'] = this.amenazaDeAborto;
    data['ninoDeseado'] = this.ninoDeseado;
    data['ninoPlaneado'] = this.ninoPlaneado;
    data['complicacionEmbarazo'] = this.complicacionEmbarazo;
    data['semanasDeGestacionNacimiento'] = this.semanasDeGestacionNacimiento;
    data['tipoDeParto'] = this.tipoDeParto;
    data['pesoAlNacer'] = this.pesoAlNacer;
    data['tallaAlNacer'] = this.tallaAlNacer;
    data['perimetroCefalico'] = this.perimetroCefalico;
    data['lloroRespiroAlNacer'] = this.lloroRespiroAlNacer;
    data['apgarAlNacimientos'] = this.apgarAlNacimientos;
    data['egresoConLaMadre'] = this.egresoConLaMadre;
    data['tarnizMetabolico'] = this.tarnizMetabolico;
    data['tarnizAuditivo'] = this.tarnizAuditivo;
    data['vacunasNacimiento'] = this.vacunasNacimiento;
    data['vitaminaK'] = this.vitaminaK;
    data['vitaminaA'] = this.vitaminaA;
    data['perinatales'] = this.perinatales;
    data['traumatismoCraneoencefalico'] = this.traumatismoCraneoencefalico;
    data['cefaleaRecurrente'] = this.cefaleaRecurrente;
    data['crisisConvulsivasNeuroesqueletico'] =
        this.crisisConvulsivasNeuroesqueletico;
    data['alteracionMarcha'] = this.alteracionMarcha;
    data['perdidaConocimiento'] = this.perdidaConocimiento;
    data['problemasDeConducta'] = this.problemasDeConducta;
    data['fracturasNeuroesqueletico'] = this.fracturasNeuroesqueletico;
    data['cardioPasma'] = this.cardioPasma;
    data['cardioPInfeccioneViasAreas'] = this.cardioPInfeccioneViasAreas;
    data['cardioPDificultadRespirarAlCaminarLargos'] =
        this.cardioPDificultadRespirarAlCaminarLargos;
    data['cardioPDificultadRespirarAlCaminarPequenas'] =
        this.cardioPDificultadRespirarAlCaminarPequenas;
    data['cardioPCianosis'] = this.cardioPCianosis;
    data['cardioPMalformacionCardiaca'] = this.cardioPMalformacionCardiaca;
    data['intoleranciaProteinaLeche'] = this.intoleranciaProteinaLeche;
    data['diarreaRecurrente'] = this.diarreaRecurrente;
    data['faltaDeIncrementoPesoTalla'] = this.faltaDeIncrementoPesoTalla;
    data['estrenimiento'] = this.estrenimiento;
    data['evacuacionesSanguinolentas'] = this.evacuacionesSanguinolentas;
    data['problemasDeParasitosis'] = this.problemasDeParasitosis;
    data['cursadoInfeccionViasUrinarias'] = this.cursadoInfeccionViasUrinarias;
    data['mojaCamaNoches'] = this.mojaCamaNoches;
    data['dolorAlOrinar'] = this.dolorAlOrinar;
    data['perdidaDelCabello'] = this.perdidaDelCabello;
    data['erupcionesRecurrentePiel'] = this.erupcionesRecurrentePiel;
    data['pielReseca'] = this.pielReseca;
    data['rinorreaHialinaRecurrente'] = this.rinorreaHialinaRecurrente;
    data['hemorragiaNarinasRecurrentes'] = this.hemorragiaNarinasRecurrentes;
    data['narinasObservaciones'] = this.narinasObservaciones;
    return data;
  }
}