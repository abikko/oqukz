import 'package:flutter_test/flutter_test.dart';
import 'package:oqukz/data/remote/repository/order/order_repository_impl.dart';
import 'package:oqukz/domain/model/order.dart';
import 'package:oqukz/domain/model/user.dart';

void main() {
  group('order', () {
    test('check order json format', () {
      var order = Order('Zhetes Abylaikhan', 'Lessons');
      var orderJsonType = {
        'name': 'Zhetes Abylaikhan',
        'lesson': 'Lessons',
        'phone': ""
      };
      expect(order.toJson(), orderJsonType);
    });

    test('check order send to firebase firestre', () {
      var order = Order('Zhess', 'Lessons');
      var repository = OrderRepositoryImpl();
      repository.createOrder(order);
    });

    test('get orders', () async {
      var orders = await OrderRepositoryImpl().getAllOrders();
      // expect(actual, matcher);
    });
  });
  group('user', () {
    test('check user phone format', () {
      var user = User.newUser('+7 (747) 909 42 14', 'Abylaikhan');
      user.setPhone = '+7 (747) 909 42 14';
      expect('77479094214', user.getPhone);
    });

    test('check user name format(it should start with uppercase letter)', () {
      var user = User.newUser('+7 (747) 909 42 14', 'bauka');
      user.setUsername = 'bauka';
      expect('Bauka', user.getUsername);
    });

    test('check is in true format will show progress', () {
      var user = User.newUser('+7 (747) 909 42 14', 'Nurba');
      user.getTutor.rating;
      
    });
  });
}
