import 'package:get/get.dart';
import 'package:get/get_connect/http/src/request/request.dart';
import 'package:oqukz/data/remote/repository/order/order_repository.dart';
import 'package:oqukz/domain/model/order.dart';

class StudentsListController extends GetxController with StateMixin<List<Order>>{
  final OrderRepository repository;
  StudentsListController(this.repository);

  @override
  void onInit() {
    fetchOrders();
    super.onInit();
  }

  void fetchOrders() async {
    try {
      change(null, status: RxStatus.error());
      await repository.getAllOrders().then((value) => change(value,status: RxStatus.success()));
    } catch (e) {
    }
  }
}
