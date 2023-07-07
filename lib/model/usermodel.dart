class UserModel {
  String? name;
  String? aadhar;
  String? phone;
  String? school;
  String? house;
  int? contribution;

  UserModel(
      {this.name,
      this.aadhar,
      this.phone,
      this.school,
      this.house,
      this.contribution});

  UserModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    aadhar = json['aadhar'];
    phone = json['phone'];
    school = json['school'];
    house = json['house'];
    contribution = json['contribution'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['aadhar'] = aadhar;
    data['phone'] = phone;
    data['school'] = school;
    data['house'] = house;
    data['contribution'] = contribution;
    return data;
  }
}
