import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:odak_balkonu/app/app.dart';

void main() {
  testWidgets('Uygulama hatasız başlatılıyor mu (Smoke Test)', (
    WidgetTester tester,
  ) async {
    // Arrange & Act
    await tester.pumpWidget(const MainApp());

    // Assert
    expect(find.byType(MaterialApp), findsOneWidget);
  });
}
