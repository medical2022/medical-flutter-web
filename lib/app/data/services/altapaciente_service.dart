import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:medicinesystem/app/data/models/Paciente._model.dart';
import 'package:medicinesystem/app/data/services/api.dart';
import 'package:medicinesystem/app/routes/app_pages.dart';

class AltapacienteService {
  Api api = new Api("users");
  void savePaciente(Paciente paciente) {
    api.addDocument(paciente.toJson());
  }

  Future<List<Paciente>> getPacientes() async {
    //var result = await afiliadosDB.getDataCollection();

    var result = await api.getDataCollection();
    List<Paciente> data = result.docs
        .map((doc) => Paciente.fromJson(doc.data() as Map<String, dynamic>))
        .toList();
    return data;
  }

  Future<List<Paciente>> getData(String id, String collection) async {
    var result = await api.getDataCollectionId(id, collection);
    List<Paciente> data = result.docs
        .map((doc) => Paciente.fromJson(doc.data() as Map<String, dynamic>))
        .toList();
    return data;
  }

  save(String id, String collection, String idDoc, Paciente paciente) async {
    // api.addDocumentWithId(id, historiaClinica.toJson()).then((value) => Fluttertoast.showToast(
    //     msg: "Datos guardados",
    //     toastLength: Toast.LENGTH_SHORT,

    //     gravity: ToastGravity.CENTER,
    //     timeInSecForIosWeb: 1,
    //     backgroundColor: Colors.black,
    //     textColor: Colors.white,
    //     fontSize: 16.0
    // ));

    await api.addDocumentCollection(id, collection, idDoc, paciente.toJson());
  }

   Future<DocumentSnapshot<Object?>> getDataById(
      String id, String collection, String idDoc) {
    return api.getDocumentByIdDoc(id, collection, idDoc);
  }
}
