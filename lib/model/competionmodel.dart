class CompetionModel {
  String? name;
  String? imagepath;
  String? start;
  String? end;

  CompetionModel({this.name, this.imagepath, this.start, this.end});

  CompetionModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    imagepath = json['imagepath'];
    start = json['start'];
    end = json['end'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['imagepath'] = imagepath;
    data['start'] = start;
    data['end'] = end;
    return data;
  }
}
