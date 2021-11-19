import 'package:oqukz/domain/model/order.dart';

abstract class OrderRepository{
  Future createOrder(Order order);

  Future<List<Order>> getAllOrders();
}