import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:oqukz/data/remote/firestore_helper.dart';
import 'package:oqukz/data/remote/repository/user/user_repository.dart';
import 'package:oqukz/domain/model/user.dart';

class UserRepositoryImpl implements UserRepository {
  @override
  Future<List<User>> getTeachersList() async {
    return await FirebaseFirestore.instance
        .collection(FirestoreHelper.userPath)
        .where('tutor', isNull: false)
        .get()
        .then(
          (value) => value.docs.map((e) => User.fromJson(e.data())).toList(),
        );
  }

  @override
  Future createUser(User user) async => await FirebaseFirestore.instance
      .collection(FirestoreHelper.userPath)
      .doc(user.phone)
      .set(user.toJson(), SetOptions(merge: true));

  @override
  Future<User> getUserByPhone(String phone) async =>
      await FirebaseFirestore.instance
          .collection(FirestoreHelper.userPath)
          .doc(phone)
          .get()
          .then((value) => User.fromJson(value.data()!));
}
