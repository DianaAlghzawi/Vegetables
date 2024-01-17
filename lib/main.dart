import 'package:flutter/material.dart';
import 'package:vegetables/screens/vegetables_screen.dart';

final colorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(0, 45, 12, 87),
  background: const Color.fromRGBO(246, 245, 245, 1),
);

final theme = ThemeData().copyWith(
  scaffoldBackgroundColor: colorScheme.background,
  colorScheme: colorScheme,
);

void main() {
  runApp(
    MaterialApp(
      home: const MyApp(),
      theme: theme,
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Vegetables();
  }
}
