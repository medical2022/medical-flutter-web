class User {
  String? id;
  String? name;
  String? lastname;
  String? nameconsult;
  String? email;
  String? phone;
  String? speciality;

  User(
      {this.id,
      this.name,
      this.lastname,
      this.nameconsult,
      this.email,
      this.phone,
      this.speciality});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    lastname = json['lastname'];
    nameconsult = json['nameconsult'];
    email = json['email'];
    phone = json['phone'];
    speciality = json['speciality'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['lastname'] = this.lastname;
    data['nameconsult'] = this.nameconsult;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['speciality'] = this.speciality;
    return data;
  }
}