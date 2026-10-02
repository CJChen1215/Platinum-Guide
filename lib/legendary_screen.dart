import 'package:flutter/material.dart';

import 'pokemon_league_screen.dart';
import 'starter_screen.dart';
import 'home_screen.dart';
import 'gym_screen.dart';

class LegendaryScreen extends StatefulWidget {
  const LegendaryScreen({super.key});

  @override
  State<LegendaryScreen> createState() => _LegendaryScreenState();
}

class _LegendaryScreenState extends State<LegendaryScreen> {
  // =========================
  // BEFORE NATIONAL POKEDEX
  // =========================

  final List<Map<String, String>> beforeNationalDex = [
    {
      'location': 'Distortion World',
      'name': 'Giratina',
      'image': 'assets/giratina.png',
      'level': 'Lv. 47',
    },
    {
      'location': 'Lake Acuity',
      'name': 'Uxie',
      'image': 'assets/uxie.png',
      'level': 'Lv. 50',
    },
    {
      'location': 'Lake Valor',
      'name': 'Azelf',
      'image': 'assets/azelf.png',
      'level': 'Lv. 50',
    },
    {
      'location': 'Lake Verity (Roaming)',
      'name': 'Mesprit',
      'image': 'assets/mesprit.png',
      'level': 'Lv. 50',
    },
  ];

  // =========================
  // AFTER NATIONAL POKEDEX
  // =========================

  final List<Map<String, String>> afterNationalDex = [
    {
      'location': 'Spear Pillar',
      'name': 'Dialga',
      'image': 'assets/dialga.png',
      'level': 'Lv. 70',
    },
    {
      'location': 'Spear Pillar',
      'name': 'Palkia',
      'image': 'assets/palkia.png',
      'level': 'Lv. 70',
    },
    {
      'location': 'Stark Mountain',
      'name': 'Heatran',
      'image': 'assets/heatran.png',
      'level': 'Lv. 50',
    },
    {
      'location': 'Snowpoint Temple',
      'name': 'Regigigas',
      'image': 'assets/regigigas.png',
      'level': 'Lv. 1',
    },
    {
      'location': 'Fullmoon Island (Roaming)',
      'name': 'Cresselia',
      'image': 'assets/cresselia.png',
      'level': 'Lv. 50',
    },
    {
      'location': 'Sinnoh Region (Roaming)',
      'name': 'Articuno',
      'image': 'assets/articuno.png',
      'level': 'Lv. 60',
    },
    {
      'location': 'Sinnoh Region (Roaming)',
      'name': 'Zapdos',
      'image': 'assets/zapdos.png',
      'level': 'Lv. 60',
    },
    {
      'location': 'Sinnoh Region (Roaming)',
      'name': 'Moltres',
      'image': 'assets/moltres.png',
      'level': 'Lv. 60',
    },
    {
      'location': 'Newmoon Island (Special Event)',
      'name': 'Darkrai',
      'image': 'assets/darkrai.png',
      'level': 'Lv. 50',
    },
    {
      'location': 'Route 224 (Special Event)',
      'name': 'Shaymin',
      'image': 'assets/shaymin.png',
      'level': 'Lv. 50',
    },
    {
      'location': 'Spear Pillar (Special Event)',
      'name': 'Arceus',
      'image': 'assets/arceus.png',
      'level': 'Lv. 80',
    },
    {
      'location': 'Sinnoh Region (Special Event)',
      'name': 'Manaphy',
      'image': 'assets/manaphy.png',
      'level': 'Lv. 1',
    },
    {
      'location': 'Sinnoh Region (Special Event)',
      'name': 'Phione',
      'image': 'assets/phione.png',
      'level': 'Lv. 1',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDD673),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 12,
            ),
            child: Column(
              children: [

                // =========================
                // TITLE
                // =========================

                const Text(
                  'Legendary\nEncounters',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF124A49),
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    height: 1.0,
                  ),
                ),

                const SizedBox(height: 18),

                // =========================
                // BEFORE NATIONAL POKEDEX
                // =========================

                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Before Getting National Pokedex',
                    style: TextStyle(
                      color: Color(0xFF124A49),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                const SizedBox(height: 8),

                for (var legendary in beforeNationalDex)
                  legendaryCard(legendary),

                const SizedBox(height: 18),

                // =========================
                // AFTER NATIONAL POKEDEX
                // =========================

                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'After Getting National Pokedex',
                    style: TextStyle(
                      color: Color(0xFF124A49),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                const SizedBox(height: 8),

                for (var legendary in afterNationalDex)
                  legendaryCard(legendary),

                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),

      // =========================
      // OLD BOTTOM NAVIGATION BAR
      // =========================

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,

        onTap: (index) {
          if (index == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const LeagueScreen(),
              ),
            );
          } else if (index == 1) {
           //On Legendary Screen.
          } else if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const HomeScreen(),
              ),
            );
          } else if (index == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const StarterScreen(),
              ),
            );
          } else if (index == 4) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const GymScreen(),
              ),
            );
          }
        },

        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xFF124A49),
        unselectedItemColor: const Color(0xFF124A49),
        backgroundColor: const Color(0xFF97C1E6),
        items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.emoji_events),
                label: 'League',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.pets),
                label: 'Legendary',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.catching_pokemon),
                label: 'Starters',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shield),
                label: 'Gyms',
          ),
        ],
      ),
    );
  }

  // =========================
  // LEGENDARY CARD
  // =========================

  Widget legendaryCard(Map<String, String> legendary) {
    return Container(
      width: double.infinity,
      height: 145,
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(8),

      decoration: BoxDecoration(
        color: const Color(0xFFE7993E),
        border: Border.all(
          color: Colors.black,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(12),
      ),

      child: Column(
        children: [
          Text(
            legendary['location']!,
            style: const TextStyle(
              color: Color(0xFF124A49),
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
          ),

          Expanded(
            child: Image.asset(
              legendary['image']!,
              fit: BoxFit.contain,
            ),
          ),

          Text(
            legendary['name']!,
            style: const TextStyle(
              color: Color(0xFF124A49),
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),

          Text(
            legendary['level']!,
            style: const TextStyle(
              color: Color(0xFF124A49),
              fontSize: 11,
            ),
          ),
        ],
      ),
    );
  }
}