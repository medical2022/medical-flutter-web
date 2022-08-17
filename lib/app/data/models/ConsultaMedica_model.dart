import 'package:flutter/widgets.dart';
import 'package:medicinesystem/app/data/models/Diagnostico_model.dart';
import 'package:medicinesystem/app/data/models/Paciente._model.dart';
import 'package:medicinesystem/app/data/models/Receta_model.dart';

class ConsultaMedica {
  String? id;
  String? idPaciente;

  String? evolucion;
  String? paciente;
  String? frecuenciaCardiaca;
  String? frecuenciaRespiratoria;
  String? presionArterial;
  String? peso;
  String? talla;
  String? perimetroCraneal;
  String? perimetroAbdominal;
  String? oximetriaPulso;
  String? temperatura;
  String? iMC;
  String? craneo;
  String? torax;
  String? oido;
  String? abdomen;
  String? ojos;
  String? extremidades;
  String? orofaringe;
  String? observaciones;
  String? narinas;
  String? cuello;
  String? nerviosCraneales;
  String? tonoMuscular;
  String? fuerza;
  String? reflejosOsteotendinosos;
  String? sensibilidadConservada;
  String? marcha;
  String? estudiosAuxiliares;
  List<Diagnostico>? diagnostico;
  String? analisisPlan;
  String? paraLaVida;
  String? paraLaFuncion;
  String? date_of_create;
  Receta? receta;
  ConsultaMedica(
      {this.id,
      this.idPaciente,
      this.evolucion,
      this.paciente,
      this.frecuenciaCardiaca,
      this.frecuenciaRespiratoria,
      this.presionArterial,
      this.peso,
      this.talla,
      this.perimetroCraneal,
      this.perimetroAbdominal,
      this.oximetriaPulso,
      this.temperatura,
      this.iMC,
      this.craneo,
      this.torax,
      this.oido,
      this.abdomen,
      this.ojos,
      this.extremidades,
      this.orofaringe,
      this.observaciones,
      this.narinas,
      this.cuello,
      this.nerviosCraneales,
      this.tonoMuscular,
      this.fuerza,
      this.reflejosOsteotendinosos,
      this.sensibilidadConservada,
      this.marcha,
      this.estudiosAuxiliares,
      this.diagnostico,
      this.analisisPlan,
      this.paraLaVida,
      this.paraLaFuncion,
      this.date_of_create,
      this.receta});

  ConsultaMedica.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    idPaciente = json['id_paciente'];
    evolucion = json['evolucion'];
    paciente = json['paciente'];
    frecuenciaCardiaca = json['frecuenciaCardiaca'];
    frecuenciaRespiratoria = json['frecuenciaRespiratoria'];
    presionArterial = json['presionArterial'];
    peso = json['peso'];
    talla = json['talla'];
    perimetroCraneal = json['perimetroCraneal'];
    perimetroAbdominal = json['perimetroAbdominal'];
    oximetriaPulso = json['oximetriaPulso'];
    temperatura = json['temperatura'];
    iMC = json['IMC'];
    craneo = json['craneo'];
    torax = json['torax'];
    oido = json['oido'];
    abdomen = json['abdomen'];
    ojos = json['ojos'];
    extremidades = json['extremidades'];
    orofaringe = json['orofaringe'];
    observaciones = json['observaciones'];
    narinas = json['narinas'];
    cuello = json['cuello'];
    nerviosCraneales = json['nerviosCraneales'];
    tonoMuscular = json['tonoMuscular'];
    fuerza = json['fuerza'];
    reflejosOsteotendinosos = json['reflejosOsteotendinosos'];
    sensibilidadConservada = json['sensibilidadConservada'];
    marcha = json['marcha'];
    estudiosAuxiliares = json['estudiosAuxiliares'];
    if (json["diagnostico"] != null) {
      diagnostico = <Diagnostico>[];
      json["diagnostico"].forEach((v) {
        diagnostico!.add(Diagnostico.fromJson(v));
      });
    }else{
      diagnostico = <Diagnostico>[];
    }
    analisisPlan = json['analisisPlan'];
    paraLaVida = json['paraLaVida'];
    paraLaFuncion = json['paraLaFuncion'];
    date_of_create = json['date_of_create'];
    receta =
        json['receta'] != null ? new Receta.fromJson(json['receta']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['id_paciente'] = this.idPaciente;
    data['evolucion'] = this.evolucion;
    data['paciente'] = this.paciente;
    data['frecuenciaCardiaca'] = this.frecuenciaCardiaca;
    data['frecuenciaRespiratoria'] = this.frecuenciaRespiratoria;
    data['presionArterial'] = this.presionArterial;
    data['peso'] = this.peso;
    data['talla'] = this.talla;
    data['perimetroCraneal'] = this.perimetroCraneal;
    data['perimetroAbdominal'] = this.perimetroAbdominal;
    data['oximetriaPulso'] = this.oximetriaPulso;
    data['temperatura'] = this.temperatura;
    data['IMC'] = this.iMC;
    data['craneo'] = this.craneo;
    data['torax'] = this.torax;
    data['oido'] = this.oido;
    data['abdomen'] = this.abdomen;
    data['ojos'] = this.ojos;
    data['extremidades'] = this.extremidades;
    data['orofaringe'] = this.orofaringe;
    data['observaciones'] = this.observaciones;
    data['narinas'] = this.narinas;
    data['cuello'] = this.cuello;
    data['nerviosCraneales'] = this.nerviosCraneales;
    data['tonoMuscular'] = this.tonoMuscular;
    data['fuerza'] = this.fuerza;
    data['reflejosOsteotendinosos'] = this.reflejosOsteotendinosos;
    data['sensibilidadConservada'] = this.sensibilidadConservada;
    data['marcha'] = this.marcha;
    data['estudiosAuxiliares'] = this.estudiosAuxiliares;

    data['diagnostico'] = this.diagnostico!.map((v) => v.toJson()).toList();

    data['analisisPlan'] = this.analisisPlan;
    data['paraLaVida'] = this.paraLaVida;
    data['paraLaFuncion'] = this.paraLaFuncion;
    data['date_of_create'] = this.date_of_create;
    if (this.receta != null) {
      data['receta'] = this.receta!.toJson();
    }
    return data;
  }

  //diagnostico
  TextEditingController controllerDiagnostico = TextEditingController();
}
