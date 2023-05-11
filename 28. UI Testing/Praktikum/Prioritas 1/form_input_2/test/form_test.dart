import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:form_input_2/screens/flutter_form.dart';

void main() {
  group(
    'Flutter Form',
    () {
      testWidgets(
        'Mencari class dan widget',
        (WidgetTester tester) async {
          await tester.pumpWidget(const MaterialApp(home: FlutterForm()));
          expect(find.byType(FlutterForm), findsOneWidget);
          expect(find.byType(Scaffold), findsOneWidget);
        },
      );
      testWidgets(
        'Mencari widget',
        (WidgetTester tester) async {
          await tester.pumpWidget(const MaterialApp(home: FlutterForm()));
          expect(find.byType(TextFormField), findsNWidgets(2));
          expect(find.byType(Form), findsOneWidget);
        },
      );
      testWidgets('Mencari text', (WidgetTester tester) async {
        await tester.pumpWidget(const MaterialApp(home: FlutterForm()));
        expect(find.text('Contacts'), findsOneWidget);
        expect(
            find.text(
                'A dialog is a type of modal window that appears in front of app content to provide critical information, or prompt for a decision to be made. '),
            findsOneWidget);
        expect(find.text('Create New Contacts'), findsOneWidget);
        expect(find.text('Update'), findsOneWidget);
        expect(find.text('Submit'), findsOneWidget);
        expect(find.text('Full Name'), findsOneWidget);
        expect(find.text('Phone'), findsOneWidget);
      });
    },
  );
}
