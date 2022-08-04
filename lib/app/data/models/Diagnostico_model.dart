class Diagnostico {
  String? id;
  String? clave;
  String? diagnostico;

  Diagnostico({this.id, this.clave, this.diagnostico});

  Diagnostico.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    clave = json['clave'];
    diagnostico = json['diagnostico'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['clave'] = this.clave;
    data['diagnostico'] = this.diagnostico;
    return data;
  }
}