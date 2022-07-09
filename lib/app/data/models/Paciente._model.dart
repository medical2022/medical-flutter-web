class Paciente {
  String? name;
  String? state;
  String? email;
  String? city;
  String? zone;
  String? apellidomaterno;
  String? apellidopaterno;
  String? street;
  String? photo;
  String? date;
  String? number;
  String? recommendedpor;
  String? gender;
  String? fraccionamiento;
  String? doctorconsult;
  String? statuscivil;
  String? companion;
  String? active;
  String? education;
  String? relationship;
  String? country;
  String? phone;
  
  Paciente(
      {this.name,
      this.state,
      this.email,
      this.city,
      this.zone,
      this.apellidomaterno,
      this.apellidopaterno,
      this.street,
      this.photo,
      this.date,
      this.number,
      this.recommendedpor,
      this.gender,
      this.fraccionamiento,
      this.doctorconsult,
      this.statuscivil,
      this.companion,
      this.active,
      this.education,
      this.relationship,
      this.country,
      this.phone});

  // Paciente.fromJson(Map<String, dynamic> json) {

  //   name = json['name'];
  //   state = json['state'];
  //   email = json['email'];
  //   city = json['city'];
  //   zone = json['zone'];
  //   apellidomaterno = json['apellidomaterno'];
  //   apellidopaterno = json['apellidopaterno'];
  //   street = json['street'];
  //   photo = json['photo'];
  //   date = json['date'];
  //   number = json['number'];
  //   recommendedpor = json['recommendedpor'];
  //   gender = json['gender'];
  //   fraccionamiento = json['fraccionamiento'];
  //   doctorconsult = json['doctorconsult'];
  //   statuscivil = json['statuscivil'];
  //   companion = json['companion'];
  //   active = json['active'];
  //   education = json['education'];
  //   relationship = json['relationship'];
  //   country = json['country'];
  //   phone = json['phone'];
  // }
  factory Paciente.fromJson(Map<String, dynamic> json) {
    return Paciente(
      name: json['name'],
      state: json['state'],
      email: json['email'],
      city: json['city'],
      zone: json['zone'],
      apellidomaterno: json['apellidomaterno'],
      apellidopaterno: json['apellidopaterno'],
      street: json['street'],
      photo: json['photo'],
      date: json['date'],
      number: json['number'],
      recommendedpor: json['recommendedpor'],
      gender: json['gender'],
      fraccionamiento: json['fraccionamiento'],
      doctorconsult: json['doctorconsult'],
      statuscivil: json['statuscivil'],
      companion: json['companion'],
      active: json['active'],
      education: json['education'],
      relationship: json['relationship'],
      country: json['country'],
      phone: json['phone'],
    ) ;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['state'] = this.state;
    data['email'] = this.email;
    data['city'] = this.city;
    data['zone'] = this.zone;
    data['apellidomaterno'] = this.apellidomaterno;
    data['apellidopaterno'] = this.apellidopaterno;
    data['street'] = this.street;
    data['photo'] = this.photo;
    data['date'] = this.date;
    data['number'] = this.number;
    data['recommendedpor'] = this.recommendedpor;
    data['gender'] = this.gender;
    data['fraccionamiento'] = this.fraccionamiento;
    data['doctorconsult'] = this.doctorconsult;
    data['statuscivil'] = this.statuscivil;
    data['companion'] = this.companion;
    data['active'] = this.active;
    data['education'] = this.education;
    data['relationship'] = this.relationship;
    data['country'] = this.country;
    data['phone'] = this.phone;
    return data;
  }
}
