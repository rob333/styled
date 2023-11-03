import 'package:flutter_test/flutter_test.dart';

// ignore: avoid_relative_lib_imports
import '../example/lib/main.dart';

void main() {
  // test('adds one to input values', () {});

  testWidgets('Styled - int increments test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    expect(find.text("counter: 0"), findsOneWidget);
    expect(find.text("text TextStyle"), findsOneWidget);
    expect(find.text("Styled TextD"), findsOneWidget);
    expect(find.text("Styled TextD2"), findsOneWidget);
    expect(find.text("This is a fancy container!"), findsOneWidget);

    // Tap the '+' icon and trigger a frame.
    // await tester.tap(find.byIcon(Icons.add));
    // await tester.tap(find.byIcon(Icons.add));
    // await tester.pump();
  });
}
