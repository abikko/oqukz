import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:oqukz/data/remote/firestore_helper.dart';
import 'package:oqukz/data/remote/repository/user/user_repository.dart';
import 'package:oqukz/domain/model/user.dart';

class UserRepositoryImpl implements UserRepository {
  @override
  Stream<User> getTeachersList() async* {}

  @override
  Future createUser(User user) async =>
    await FirebaseFirestore.instance
        .collection(FirestoreHelper.userPath)
        .doc(user.phone)
        .set(user.toJson(),SetOptions(merge: true));
}
