import 'package:medicinesystem/app/data/models/Recetas_model.dart';

class Receta {
  List<Recetas>? recetas;
  String? observaciones;

  Receta({this.recetas, this.observaciones});

  Receta.fromJson(Map<String, dynamic> json) {
    if (json['recetas'] != null) {
      recetas = <Recetas>[];
      json['recetas'].forEach((v) {
        recetas!.add(new Recetas.fromJson(v));
      });
    }
    observaciones = json['observaciones'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.recetas != null) {
      data['recetas'] = this.recetas!.map((v) => v.toJson()).toList();
    }
    data['observaciones'] = this.observaciones;
    return data;
  }
}

