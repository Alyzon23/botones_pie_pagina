import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:botones/main.dart';

void main() {
  testWidgets('BottomNavigationBar button test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify that the initial text is "holi".
    expect(find.text('holi'), findsOneWidget);

    // Tap the second button (Buscar) and trigger a frame.
    await tester.tap(find.text('Buscar'));
    await tester.pump();

    // Verify that the text is still "holi" (for simplicity).
    expect(find.text('holi'), findsOneWidget);

    // Tap the third button (Favoritos) and trigger a frame.
    await tester.tap(find.text('Favoritos'));
    await tester.pump();

    // Verify that the text is still "holi".
    expect(find.text('holi'), findsOneWidget);

    // Tap the fourth button (Notificaciones) and trigger a frame.
    await tester.tap(find.text('Notificaciones'));
    await tester.pump();

    // Verify that the text is still "holi".
    expect(find.text('holi'), findsOneWidget);

    // Tap the fifth button (Perfil) and trigger a frame.
    await tester.tap(find.text('Perfil'));
    await tester.pump();

    // Verify that the text is still "holi".
    expect(find.text('holi'), findsOneWidget);
  });
}
