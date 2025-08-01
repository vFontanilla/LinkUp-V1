import 'package:flutter_test/flutter_test.dart';
import 'package:link_up_v1/main.dart';

void main() {
  testWidgets('Onboarding screen renders correctly', (WidgetTester tester) async {
    await tester.pumpWidget(const StudyDoApp());

    // Check that the logo text appears
    expect(find.text('study.do'), findsOneWidget); // This won't work with RichText

    // Instead, use individual words from the RichText
    expect(find.text('study'), findsOneWidget);
    expect(find.text('.do'), findsOneWidget);

    // Check for buttons
    expect(find.text('Login'), findsOneWidget);
    expect(find.text('Create a new account'), findsOneWidget);
  });
}
