import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:recipe_book_app/home_screen.dart'; // Keep only necessary imports

void main() {
  testWidgets('HomeScreen displays a list of recipes', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: HomeScreen()));

    // Verify the list contains recipe names
    expect(find.text('Pancakes'), findsOneWidget);
    expect(find.text('Pizza'), findsOneWidget);
    expect(find.text('Pasta'), findsOneWidget);
  });
}
