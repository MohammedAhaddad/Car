import 'package:car/moodle/sliders/DiohomeScreenModle.dart';
import 'package:car/moodle/sliders/homeScreenModle.dart';
import 'package:get/get.dart';

class MainScreenControler extends GetxController {
  MainScreenControler() {
    getAllProdactofSlaider();
    getAllProdactofbrands();
    getAllProdactofcars();
  }
  List<sliders> Slaider = [];
  List<brands> brand = [];
  List<cars> car = [];

  Future<List<sliders>> getAllProdactofSlaider() async {
    Slaider = await DiohomeScreenModle.diohomeScreenModle.getAllCarSlaider();
    update();
    // print(Slaider.length);
    return Slaider;
  }

  Future<List<brands>> getAllProdactofbrands() async {
    brand = await DiohomeScreenModle.diohomeScreenModle.getAllCarbrands();
    update();
    // print(brand.length);
    return brand;
  }

  Future<List<cars>> getAllProdactofcars() async {
    car = await DiohomeScreenModle.diohomeScreenModle.getAllCars();
    update();
    //  print(car.length);
    return car;
  }
}
