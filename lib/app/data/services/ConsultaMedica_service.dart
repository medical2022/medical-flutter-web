import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:medicinesystem/app/data/models/ConsultaMedica_model.dart';
import 'package:medicinesystem/app/data/models/Recetas_model.dart';
import 'package:medicinesystem/app/data/services/api.dart';
import 'package:flutter/material.dart';

class ConsultaMedicaService {
  Api api = new Api("users");

  save(String id, String collection, String idDoc,
      ConsultaMedica consultaMedica) async {
    // api.addDocumentWithId(id, consultaMedica.toJson()).then((value) => Fluttertoast.showToast(
    //     msg: "Datos guardados",
    //     toastLength: Toast.LENGTH_SHORT,

    //     gravity: ToastGravity.CENTER,
    //     timeInSecForIosWeb: 1,
    //     backgroundColor: Colors.black,
    //     textColor: Colors.white,
    //     fontSize: 16.0
    // ));

    api
        .addDocumentCollection(id, collection, idDoc, consultaMedica.toJson())
        .then((value) => Fluttertoast.showToast(
            msg: "Datos guardados",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.black,
            textColor: Colors.white,
            fontSize: 16.0));
  }

  Future<ConsultaMedica> getData(
      String id, String collection, String idDoc) async {
    final data = await api.getDocumentByIdDoc(id, collection, idDoc);

    ConsultaMedica consultaMedica = ConsultaMedica.fromJson(data.data() as Map<String, dynamic>);
    return consultaMedica;
  }

  Future<List<ConsultaMedica>> getDataList(String id, String collection) async {
    var result = await api.getDataCollectionId(id, collection);
    List<ConsultaMedica> data = result.docs
        .map((doc) =>
            ConsultaMedica.fromJson(doc.data() as Map<String, dynamic>))
        .toList();
    print(result);
    return data;
  }

  // Future<List<Recetas>> getRecetas(String id, String collection) async {
  //   var result = await api.getDataCollectionId(id, collection);
  //   return;
  // }

  saveReceta(String id, String collection, String idDoc, Recetas recetas) {
    api.addDocumentCollection(id, collection, idDoc, recetas.toJson()).then(
        (value) => Fluttertoast.showToast(
            msg: "Datos guardados",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.black,
            textColor: Colors.white,
            fontSize: 16.0));
  }

  Future<List<ConsultaMedica>> loadBySuggestion(
      String id, String collection) async {
    var result =
        await api.getCollectionWhere(id, collection, "suggestion", true);

    List<ConsultaMedica> data = [];
    data = result.docs
        .map((doc) =>
            ConsultaMedica.fromJson(doc.data() as Map<String, dynamic>))
        .toList();
    return data;
  }
}
