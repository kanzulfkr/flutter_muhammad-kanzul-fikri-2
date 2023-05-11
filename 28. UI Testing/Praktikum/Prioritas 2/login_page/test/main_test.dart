import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:login_page/screen/home_page.dart';

void main() {
  group(
    'On Boarding Widget test',
    () {
      testWidgets(
        'Find class',
        (WidgetTester tester) async {
          await tester.pumpWidget(const MaterialApp(home: HomePage()));
          expect(find.byType(HomePage), findsOneWidget);
        },
      );

      testWidgets('Find text', (WidgetTester tester) async {
        await tester.pumpWidget(const MaterialApp(home: HomePage()));
        expect(find.text('Create Your Account'), findsOneWidget);
        expect(find.text('Set a password'), findsOneWidget);
        expect(find.text('CREATE ACCOUNT'), findsOneWidget);
        expect(find.text('Password'), findsOneWidget);
        expect(
            find.text(
                'Please create a secure password including the following criteria below.'),
            findsOneWidget);
        expect(find.text('Contains at least 8 characters'), findsOneWidget);
        expect(find.text('Contains at least 1 number'), findsOneWidget);
      });

      // testWidgets(
      //   'Find text Style Forgot password',
      //   (WidgetTester tester) async {
      //     await tester.pumpWidget(const MaterialApp(home: HomePage()));
      //     final text = tester.widget<Text>(find.text('Forgot password'));
      //     expect(text.style!.color, Colors.blueAccent);
      //     expect(text.style!.fontSize, 15);
      //   },
      // );
      // testWidgets(
      //   'Find text Style Not me',
      //   (WidgetTester tester) async {
      //     await tester.pumpWidget(const MaterialApp(home: HomePage()));
      //     final text = tester.widget<Text>(find.text('Not me'));
      //     expect(text.style!.color, Colors.grey);
      //     expect(text.style!.fontSize, 15);
      //   },
      // );
    },
  );
}
