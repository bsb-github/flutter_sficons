import 'package:flutter/material.dart';
import 'package:flutter_sficons/flutter_sficon.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('SFIcon.fromName widget', () {
    testWidgets('should render icon from symbol name',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: SFIcon.fromName(
              'heart.fill',
              fontSize: 32,
            ),
          ),
        ),
      );

      expect(find.byType(SFIcon), findsOneWidget);
    });

    testWidgets('should handle invalid symbol names gracefully',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: SFIcon.fromName(
              'invalid.symbol.name',
              fontSize: 32,
            ),
          ),
        ),
      );

      // Should render without error, even if icon not found
      expect(tester.takeException(), isNull);
    });

    testWidgets('should apply custom properties from symbol name',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: SFIcon.fromName(
              'sun.max.fill',
              fontSize: 48,
              color: Colors.orange,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      );

      expect(find.byType(SFIcon), findsOneWidget);
    });
  });
}
