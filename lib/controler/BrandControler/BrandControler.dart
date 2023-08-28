import 'package:car/moodle/Brands/AllBrandsMoodle.dart';
import 'package:get/get.dart';

import '../../moodle/Brands/AllBrands.dart';

class BrandControler extends GetxController {
  List<Brand> brand = [];
  List<AllBrands> allBrand = [];
  Future<List<Brand>> getAllBrand() async {
    brand = await DioAllBrands.dioAllBrands.getAllBrand();
    update();
    return brand;
  }

  Future<List<AllBrands>> gatBrandCar(int index) async {
    allBrand = await DioAllBrands.dioAllBrands.gatBrandCar(index);
    update();
    return allBrand;
  }
}
