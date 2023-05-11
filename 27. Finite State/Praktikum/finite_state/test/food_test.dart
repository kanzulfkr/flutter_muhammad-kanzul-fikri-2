import 'package:finite_state/view/food_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets(
    'Find class',
    (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: FoodScreen()));
      expect(find.byType(FoodScreen), findsOneWidget);
      expect(find.byType(ListTile), findsNWidgets(3));
      // expect(find.byType(Icon), findsNWidgets(3));
    },
  );

  testWidgets('Find text', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: FoodScreen()));
    expect(find.byIcon(Icons.fastfood), findsNWidgets(3));
    expect(find.text('Bakso'), findsOneWidget);
    expect(find.text('Mi Ayam'), findsOneWidget);
    expect(find.text('Nasi Kucing'), findsOneWidget);
  });
}
