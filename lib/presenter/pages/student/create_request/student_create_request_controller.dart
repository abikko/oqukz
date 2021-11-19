import 'package:get/get.dart';
import 'package:oqukz/data/local/settings_dao.dart';
import 'package:oqukz/data/remote/repository/order/order_repository.dart';
import 'package:oqukz/domain/model/order.dart';

class StudentCreateRequestController extends GetxController
    with StateMixin {
  final OrderRepository orderRepository;

  StudentCreateRequestController(this.orderRepository);

  void createOrder(Order order) async {
    print('create order');
    try {
      print('try catch order');
      change(null, status: RxStatus.loading());
      print('loading state');
      order.phone = SettingsDao.phone;
      await orderRepository
          .createOrder(order)
          .then((value) => change(null, status: RxStatus.success()));
    } catch (e) {}
  }
}
