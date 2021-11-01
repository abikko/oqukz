// Import the test package and Counter class
import 'package:flutter_test/flutter_test.dart';
import 'package:oqukz/domain/model/user.dart';

void main() {
  group('User', () {
    test('Checking is user formatting number like +7 (747) 909 42 14', () {
      final counter = User.newUser("+77479094214", "Zhetes Abylaikhan");

      expect(counter.phone, "+7 (747) 909 42 14");
    });
  });
}
