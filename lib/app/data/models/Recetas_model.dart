class Recetas {
  String? medicamento;
  String? dosis;
  String? frecuencia;
  String? duracion;
  String? via;
  bool? suggestion;

  Recetas(
      {this.medicamento, this.dosis, this.frecuencia, this.duracion, this.via,this.suggestion});

  Recetas.fromJson(Map<String, dynamic> json) {
    medicamento = json['medicamento'];
    dosis = json['dosis'];
    frecuencia = json['frecuencia'];
    duracion = json['duracion'];
    via = json['via'];
    suggestion = json['suggestion'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['medicamento'] = this.medicamento;
    data['dosis'] = this.dosis;
    data['frecuencia'] = this.frecuencia;
    data['duracion'] = this.duracion;
    data['via'] = this.via;
    data['suggestion'] = this.suggestion;
    return data;
  }
}