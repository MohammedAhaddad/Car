class homeScreenModle {
  bool? status;
  String? message;
  Data? data;

  homeScreenModle.fromJson(Map<String, dynamic> json) {
    status = json["status"];
    message = json['message'];
    data = json["data"] != null ? Data.fromJson(json["data"]) : null;
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = Map<String, dynamic>();
    json["status"] = status;
    json["message"] = message;
    if (data != null) {
      json["data"] = data!.toJson();
    }
    return json;
  }
}

class Data {
  List<sliders>? slider;
  List<brands>? brand;
  List<cars>? car;

  Data.fromJson(Map<String, dynamic> json) {
    slider = List<sliders>.from(
        json['sliders'].map((item) => sliders.fromJson(item)));
    brand =
        List<brands>.from(json['brands'].map((item) => brands.fromJson(item)));
    car = List<cars>.from(json['cars'].map((item) => cars.fromJson(item)));
  }
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = Map();
    if (brand != null) {
      json['brands'] = brand!.map((e) => e.toJson()).toList();
    }
    if (car != null) {
      json['cars'] = car!.map((e) => e.toJson()).toList();
    }

    if (slider != null) {
      json['sliders'] = slider!.map((e) => e.toJson()).toList();
    }

    return json;
  }
}

class sliders {
  int? id;
  String? image;
  String? title;

  sliders.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
    title = json['title'];
  }
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = Map();
    json['id'] = id;
    json['image'] = image;
    json['title'] = title;

    return json;
  }
}

class brands {
  int? id;
  String? name;
  String? logo;

  brands.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    logo = json['logo'];
  }
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = Map();
    json['id'] = id;
    json['name'] = name;
    json['logo'] = logo;
    return json;
  }
}

class cars {
  int? id;
  String? name;
  String? image;
  num? price;
  int? stars;
  int? ratingsCount;
  String? enginePower;
  String? maxTorque;
  String? acceleration;
  brandofCars? brand;

  cars.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
    price = json['price'];
    stars = json['stars'];
    ratingsCount = json['ratings_count'];
    enginePower = json['engine_power'];
    maxTorque = json['max_torque'];
    acceleration = json['acceleration'];
    if (brand != null) {
      brand = brandofCars.fromJson(json['brand']);
    }
  }
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = Map();
    json['id'] = id;
    json['name'] = name;
    json['image'] = image;
    json['price'] = price;
    json['ratings_count'] = ratingsCount;
    json['engine_power'] = enginePower;
    json['max_torque'] = maxTorque;
    json['acceleration'] = acceleration;
    if (brand != null) {
      json['brand'] = brand!.toJson();
    }
    return json;
  }
}

class brandofCars {
  int? id;
  String? name;
  String? logoUri;

  brandofCars.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    name = json["name"];
    logoUri = json["logoUri"];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = Map();
    json["id"] = id;
    json["name"] = name;
    json["logoUri"] = logoUri;
    return json;
  }
}



// class homeScreenModle {
//   bool? status;
//   String? message;
//   Data? data;

//   homeScreenModle({this.status, this.message, this.data});

//   homeScreenModle.fromJson(Map<String, dynamic> json) {
//     status = json['status'];
//     message = json['message'];
//     data = json['data'] != null ? Data.fromJson(json['data']) : null;
//   }

//   Map<String, dynamic> toJson() {
//     Map<String, dynamic> data = Map<String, dynamic>();
//     data['status'] = status;
//     data['message'] = message;
//     if (this.data != null) {
//       data['data'] = this.data!.toJson();
//     }
//     return data;
//   }
// }

// class Data {
//   List<Sliders>? sliders;
//   List<Brands>? brands;
//   List<Cars>? cars;

//   Data({this.sliders, this.brands, this.cars});

//   Data.fromJson(Map<String, dynamic> json) {
//     if (json['sliders'] != null) {
//       sliders = <Sliders>[];
//       json['sliders'].forEach((v) {
//         sliders!.add(Sliders.fromJson(v));
//       });
//     }
//     if (json['brands'] != null) {
//       brands = <Brands>[];
//       json['brands'].forEach((v) {
//         brands!.add(Brands.fromJson(v));
//       });
//     }
//     if (json['cars'] != null) {
//       cars = <Cars>[];
//       json['cars'].forEach((v) {
//         cars!.add(Cars.fromJson(v));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     Map<String, dynamic> data = Map<String, dynamic>();
//     if (sliders != null) {
//       data['sliders'] = sliders!.map((v) => v.toJson()).toList();
//     }
//     if (brands != null) {
//       data['brands'] = brands!.map((v) => v.toJson()).toList();
//     }
//     if (cars != null) {
//       data['cars'] = cars!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

// class Sliders {
//   int? id;
//   String? image;
//   String? title;

//   Sliders({this.id, this.image, this.title});

//   Sliders.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     image = json['image'];
//     title = json['title'];
//   }

//   Map<String, dynamic> toJson() {
//     Map<String, dynamic> data = Map<String, dynamic>();
//     data['id'] = id;
//     data['image'] = image;
//     data['title'] = title;
//     return data;
//   }
// }

// class Brands {
//   int? id;
//   String? name;
//   String? logo;

//   Brands({this.id, this.name, this.logo});

//   Brands.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     name = json['name'];
//     logo = json['logo'];
//   }

//   Map<String, dynamic> toJson() {
//     Map<String, dynamic> data = Map<String, dynamic>();
//     data['id'] = id;
//     data['name'] = name;
//     data['logo'] = logo;
//     return data;
//   }
// }

// class Cars {
//   int? id;
//   String? name;
//   String? image;
//   int? price;
//   int? stars;
//   int? ratingsCount;
//   String? enginePower;
//   String? maxTorque;
//   String? acceleration;
//   Brands? brand;

//   Cars(
//       {this.id,
//       this.name,
//       this.image,
//       this.price,
//       this.stars,
//       this.ratingsCount,
//       this.enginePower,
//       this.maxTorque,
//       this.acceleration,
//       this.brand});

//   Cars.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     name = json['name'];
//     image = json['image'];
//     price = json['price'];
//     stars = json['stars'];
//     ratingsCount = json['ratings_count'];
//     enginePower = json['engine_power'];
//     maxTorque = json['max_torque'];
//     acceleration = json['acceleration'];
//     brand = json['brand'] != null ? Brands.fromJson(json['brand']) : null;
//   }

//   Map<String, dynamic> toJson() {
//     Map<String, dynamic> data = Map<String, dynamic>();
//     data['id'] = id;
//     data['name'] = name;
//     data['image'] = image;
//     data['price'] = price;
//     data['stars'] = stars;
//     data['ratings_count'] = ratingsCount;
//     data['engine_power'] = enginePower;
//     data['max_torque'] = maxTorque;
//     data['acceleration'] = acceleration;
//     if (brand != null) {
//       data['brand'] = brand!.toJson();
//     }
//     return data;
//   }
// }
