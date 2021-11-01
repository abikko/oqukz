import 'package:flutter_test/flutter_test.dart';
import 'package:oqukz/presenter/pages/general/welcome/welcome_page.dart';

void main(){
  testWidgets('Test welcome screen for pressing button', (tester) async {
    await tester.pumpWidget(WelcomePage());
    expect(find.text('Продолжить'),findsOneWidget);
  });
}