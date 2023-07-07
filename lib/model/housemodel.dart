class HouseModel {
  String? house;
  int? points;

  HouseModel({this.house, this.points});

  HouseModel.fromJson(Map<String, dynamic> json) {
    house = json['house'];
    points = json['points'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['house'] = house;
    data['points'] = points;
    return data;
  }
}
