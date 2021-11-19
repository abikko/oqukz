import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'package:oqukz/main.dart' as app;
import 'package:oqukz/presenter/pages/general/send_sms/send_sms_page.dart';
import 'package:oqukz/presenter/pages/student/create_request/student_create_request_page.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  group('app_tesdt', () {
    testWidgets('check button clickable test', (tester) async {
      app.main();

      await tester.pumpAndSettle();

      final Finder buttonNext = find.text('Продолжить');

      await tester.tap(buttonNext);
      await tester.pumpAndSettle();
    });

    testWidgets('check for masking phone number', (tester) async {
      // app.main();
      await tester.pumpWidget(MaterialApp(home: const SendSmsPage()));
      await tester.enterText(find.byType(TextField), '+77479094214');
      final TextField formfield =
          tester.widget<TextField>(find.byType(TextField));

      expect(formfield.controller!.text, '+7 (747) 909 42 14');
      // await tester.tap(find.byType(ElevatedButton));
      await tester.pumpAndSettle();
    });

    testWidgets('check for creating order by student', (tester) async {
      await tester.pumpWidget(MaterialApp(home: StudentCreateRequestPage()));
    });
  });
}
