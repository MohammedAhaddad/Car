import 'dart:developer';

import 'package:car/moodle/Brands/AllBrands.dart';
import 'package:dio/dio.dart';

class DioAllBrands {
  DioAllBrands._();
  static DioAllBrands dioAllBrands = DioAllBrands._();
  Dio dio = Dio();

  Future<List<Brand>> getAllBrand() async {
    Response response =
        await dio.get("https://cars-api.ameerabunada.com/api/v1/brands");
    List res = response.data['data'];
    log("the respons brands  ***********$res");

    List<Brand> brand = res.map((e) {
      return Brand.fromJson(e);
    }).toList();
    log(brand.length.toString());

    return brand;
  }

  Future<List<AllBrands>> gatBrandCar(int index) async {
    Response response =
        await dio.get("https://cars-api.ameerabunada.com/api/v1/brands/$index");
    List res = response.data['data'];
    log("the respons brandsCars  ***********$res");
    List<AllBrands> brandCar = await res.map((e) {
      return AllBrands.fromJson(e);
    }).toList();
    log(brandCar.length.toString());
    return brandCar;
  }
}
