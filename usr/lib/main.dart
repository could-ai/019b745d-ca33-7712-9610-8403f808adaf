import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/module_detail_screen.dart';
import 'screens/scenario_detail_screen.dart';

void main() {
  runApp(const BoomiGuideApp());
}

class BoomiGuideApp extends StatelessWidget {
  const BoomiGuideApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Boomi Learning Guide',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
        cardTheme: CardTheme(
          surfaceTintColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/module': (context) => const ModuleDetailScreen(),
        '/scenario': (context) => const ScenarioDetailScreen(),
      },
    );
  }
}
