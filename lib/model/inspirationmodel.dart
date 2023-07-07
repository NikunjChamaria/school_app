class InspirationModel {
  String? name;
  int? age;
  String? imagepath;
  String? profilepath;
  String? description;
  String? house;
  String? school;
  int? upvotes;

  InspirationModel(
      {this.name,
      this.age,
      this.profilepath,
      this.imagepath,
      this.description,
      this.house,
      this.school,
      this.upvotes});

  InspirationModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    age = json['age'];
    imagepath = json['imagepath'];
    profilepath = json['profilepath'];
    description = json['description'];
    house = json['house'];
    school = json['school'];
    upvotes = json['upvotes'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['age'] = age;
    data['imagepath'] = imagepath;
    data['description'] = description;
    data['profilepath'] = profilepath;
    data['house'] = house;
    data['school'] = school;
    data['upvotes'] = upvotes;
    return data;
  }
}
