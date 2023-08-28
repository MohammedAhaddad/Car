class AllBrands {
  bool? status;
  String? message;
  List<Data>? data;
  AllBrands({this.data, this.message, this.status});
  AllBrands.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json["data"] != null
        ? List<Data>.from(json['data'].map((item) => Data.fromJson(item)))
        : null;
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = Map();
    map['status'] = status;
    map['message'] = message;
    if (data != null) {
      map['data'] = data!.map((e) => e.toJson()).toList();
    }
    return map;
  }
}

class Data {
  int? id;
  String? name;
  String? image;
  int? price;
  int? stars;
  int? ratingsCount;
  String? enginePower;
  String? maxTorque;
  String? acceleration;
  Brand? brand;
  Data(
      {this.id,
      this.name,
      this.image,
      this.price,
      this.stars,
      this.ratingsCount,
      this.enginePower,
      this.maxTorque,
      this.acceleration,
      this.brand});
  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
    price = json['price'];
    stars = json['stars'];
    ratingsCount = json['ratings_count'];
    enginePower = json['engine_power'];
    maxTorque = json['max_torque'];
    acceleration = json['acceleration'];
    brand = json['brand'] != null ? Brand.fromJson(json['brand']) : null;
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['name'] = name;
    data['image'] = image;
    data['price'] = price;
    data['stars'] = stars;
    data['ratings_count'] = ratingsCount;
    data['engine_power'] = enginePower;
    data['max_torque'] = maxTorque;
    data['acceleration'] = acceleration;
    if (brand != null) {
      data['brand'] = brand!.toJson();
    }
    return data;
  }
}

class Brand {
  int? id;
  String? name;
  String? logo;

  Brand.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    logo = json['logo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map();
    data['id'] = id;
    data['name'] = name;
    data['logo'] = logo;
    return data;
  }
}
