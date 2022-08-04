import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:medicinesystem/app/data/models/HistoriaClinica_model.dart';
import 'package:medicinesystem/app/data/services/api.dart';
import 'package:flutter/material.dart';

class HistoriaClinicaService {
  Api api = new Api("users");

  save(String id, String collection, String idDoc,
      HistoriaClinica historiaClinica) async {
    // api.addDocumentWithId(id, historiaClinica.toJson()).then((value) => Fluttertoast.showToast(
    //     msg: "Datos guardados",
    //     toastLength: Toast.LENGTH_SHORT,

    //     gravity: ToastGravity.CENTER,
    //     timeInSecForIosWeb: 1,
    //     backgroundColor: Colors.black,
    //     textColor: Colors.white,
    //     fontSize: 16.0
    // ));

    api.addDocumentCollection(id, collection, idDoc, historiaClinica.toJson()).then((value) => Fluttertoast.showToast(
        msg: "Datos guardados",
        toastLength: Toast.LENGTH_SHORT,

        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.black,
        textColor: Colors.white,
        fontSize: 16.0
    ));
  }

  Future<DocumentSnapshot<Object?>> getData(
      String id, String collection, String idDoc) {
    return api.getDocumentByIdDoc(id, collection, idDoc);
  }
}
