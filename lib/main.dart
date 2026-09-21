import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

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
    );
  }
}

/// Home page of the Pokémon Platinum guide.
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Home is the middle button.
  int currentIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Main Pokémon Platinum image
            Expanded(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    'assets/home.png',
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover,
                    ),

                    Image.asset(
                      'assets/logo.png',
                      width: 220,
                    ),
                ],
              ),
            ),
            // Bottom navigation from the Home wireframe
            BottomNavigationBar(
              currentIndex: currentIndex,

              onTap: (index) {
                setState(() {
                  currentIndex = index;
                });
              },

              type: BottomNavigationBarType.fixed,

              backgroundColor: const Color(0xFF97C1E6),

              selectedItemColor: const Color(0xFF124A49),
              unselectedItemColor: Colors.black54,

              showSelectedLabels: false,
              showUnselectedLabels: false,

              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.emoji_events),
                  label: 'League',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.pets),
                  label: 'Starters',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.catching_pokemon),
                  label: 'Legendary',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.shield),
                  label: 'Gyms',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

