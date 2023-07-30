import 'package:counter/main.dart' as app;
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:patrol/patrol.dart';

void main() {
  patrolTest(
    'counter 1',
    nativeAutomation: true,
    ($) async {
      app.main();
      await $.waitUntilExists($(FloatingActionButton));
      await $.waitUntilVisible($(FloatingActionButton));

      expect($('Flutter Demo Home Page'), findsOneWidget);
      expect($('You have pushed the button this many times:'), findsOneWidget);
      await $.pump(const Duration(seconds: 5));
    },
  );

  patrolTest(
    'counter 2',
    nativeAutomation: true,
    ($) async {
      app.main();
      await $.waitUntilExists($(FloatingActionButton));
      await $.waitUntilVisible($(FloatingActionButton));

      expect($('Flutter Demo Home Page'), findsOneWidget);
      expect($('You have pushed the button this many times:'), findsOneWidget);
      await $.pump(const Duration(seconds: 5));
    },
  );
}
