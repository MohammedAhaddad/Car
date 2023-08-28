import 'dart:developer';

import 'package:car/moodle/sliders/homeScreenModle.dart';
import 'package:dio/dio.dart';

class DiohomeScreenModle {
  DiohomeScreenModle._();
  static DiohomeScreenModle diohomeScreenModle = DiohomeScreenModle._();
  Dio dio = Dio();

  Future<List<sliders>> getAllCarSlaider() async {
    Response response =
        await dio.get("https://cars-api.ameerabunada.com/api/v1/home");
    List res = response.data['data']['sliders'];
    //  log("the respons Slaider  ***********$res");

    List<sliders> car = res.map((e) {
      return sliders.fromJson(e);
    }).toList();
    // log(car.length.toString());
    return car;
  }

  Future<List<brands>> getAllCarbrands() async {
    Response response =
        await dio.get("https://cars-api.ameerabunada.com/api/v1/home");
    List res = response.data['data']['brands'];
    // log("the respons brands  ***********$res");

    List<brands> brand = res.map((e) {
      return brands.fromJson(e);
    }).toList();
    // log(brand.length.toString());
    return brand;
  }

  Future<List<cars>> getAllCars() async {
    Response response =
        await dio.get("https://cars-api.ameerabunada.com/api/v1/home");
    List res = response.data['data']['cars'];
    // log("the respons cars  ***********$res");

    List<cars> car = res.map((e) {
      return cars.fromJson(e);
    }).toList();
    //  log(car.length.toString());
    return car;
  }
}
