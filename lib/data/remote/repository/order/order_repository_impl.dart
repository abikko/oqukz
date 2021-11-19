import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:oqukz/data/remote/firestore_helper.dart';
import 'package:oqukz/data/remote/repository/order/order_repository.dart';
import 'package:oqukz/domain/model/order.dart';

class OrderRepositoryImpl extends OrderRepository {
  @override
  Future createOrder(Order order) async {
    DocumentReference doc = await FirebaseFirestore.instance
        .collection(FirestoreHelper.orderPath)
        .doc();
        order.orderId = doc.id;
    await FirebaseFirestore.instance
        .collection(FirestoreHelper.orderPath)
        .doc(order.orderId)
        .set(order.toJson());
  }

  @override
  Future<List<Order>> getAllOrders() async => await FirebaseFirestore.instance
      .collection(FirestoreHelper.orderPath)
      .get().then((value) => value.docs.map((e) => Order.fromJson(e.data())).toList());
}
