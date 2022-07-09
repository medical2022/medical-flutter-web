import 'package:flutter/material.dart';
import 'package:medicinesystem/app/data/models/Paciente._model.dart';
import 'package:medicinesystem/app/data/services/api.dart';

class AltapacienteService {
  Api api = new Api("paciente");
  void savePaciente(Paciente paciente) {
    api.addDocument(paciente.toJson());
  }

  Future<List<Paciente>> getPacientes() async {
    //var result = await afiliadosDB.getDataCollection();

    var result = await api.getDataCollection() ;
    List<Paciente> data =
        result.docs.map((doc  ) => Paciente.fromJson(doc.data() as Map<String, dynamic>  )).toList();
    return data;
  }
  
}
