import 'package:flutter_test/flutter_test.dart';
import 'package:homework_w8/EXERCISE-2/main.dart';

void main() {
  testWidgets('start button opens the temperature screen', (tester) async {
    await tester.pumpWidget(const TemperatureApp());

    expect(find.text('Welcome !'), findsOneWidget);

    await tester.tap(find.text('Start to convert'));
    await tester.pumpAndSettle();

    expect(find.text('Welcome !'), findsNothing);
    expect(find.text('Converter'), findsOneWidget);
  });
}
