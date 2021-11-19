import 'package:get/get.dart';

class SoonController extends GetxController {

SoonController();

  final _obj = ''.obs;
  set obj(value) => this._obj.value = value;
  get obj => this._obj.value;
}