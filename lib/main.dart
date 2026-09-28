import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';
import 'gym_screen.dart';
import 'pokemon_league_screen.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sinnoh Region Playthrough Guide',
      debugShowCheckedModeBanner: false,

      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,

      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF124A49),
        ),
      ),

      home: const HomeScreen(),

      routes: {
        '/home': (context) => const HomeScreen(),
        '/league': (context) => const LeagueScreen(),
        //'/starter': (context) => const StarterScreen(),
        //'/legendary': (context) => const LegendaryScreen(),
        '/gym': (context) => const GymScreen(),
      },
    );
  }
}

