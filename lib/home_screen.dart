import 'package:flutter/material.dart';

import 'gym_screen.dart';
import 'starter_screen.dart';
import 'pokemon_league_screen.dart';
import 'legendary_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDD673),

      body: Column(
        children: [
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
                  width: 440,
                ),
              ],
            ),
          ),

          BottomNavigationBar(
            currentIndex: currentIndex,
              onTap: (index) { 
                if (index == 0) { 
                  Navigator.push( 
                    context, MaterialPageRoute( 
                      builder: (context) => const LeagueScreen(), 
                      ), 
                    ); 
                  } else if (index == 1) { 
                  Navigator.push( 
                    context, MaterialPageRoute( 
                      builder: (context) => const LegendaryScreen(), 
                      ), 
                    ); 
                  } else if (index == 2) { 
                    // Already on Home 
                  } else if (index == 3) { 
                  Navigator.push( 
                    context, MaterialPageRoute( 
                     builder: (context) => const StarterScreen(), 
                      ), 
                   ); 
                 } 
                  else if (index == 4) { 
                  Navigator.push( 
                    context, MaterialPageRoute( 
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
        ],
      ),
    );
  }
}

