import 'package:flutter/material.dart';

import 'home_screen.dart';
import 'gym_screen.dart';
import 'starter_screen.dart';
import 'legendary_screen.dart';
import 'pokemon_league_team_screen.dart';

class LeagueScreen extends StatefulWidget {
  const LeagueScreen({super.key});

  @override
  State<LeagueScreen> createState() => _LeagueScreenState();
}

class _LeagueScreenState extends State<LeagueScreen> {
  int currentIndex = 0;

  final List<String> leagueNames = [
    'Aaron',
    'Bertha',
    'Flint',
    'Lucian',
    'Cynthia',
  ];

  final List<String> leagueBanners = [
    'assets/aaron1.png',
    'assets/bertha1.png',
    'assets/flint1.png',
    'assets/lucian1.png',
    'assets/cynthia1.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDD673),

      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 15),

            const Text(
              'SINNOH LEAGUE',
              style: TextStyle(
                color: Color(0xFF124A49),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: ListView.builder(
                  itemCount: leagueBanners.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () { 
                        Navigator.push( 
                          context, MaterialPageRoute( 
                            builder: (context) => PokemonLeagueTeamScreen( 
                              memberName: leagueNames[index], 
                              ), 
                            ), 
                          ); 
                        },
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 8),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: 2,
                          ),
                        ),
                        child: Image.asset(
                          leagueBanners[index],
                          width: double.infinity,
                          height: 82,
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
          onTap: (index) { 
            if (index == 0) { 
            } else if (index == 1) {
                Navigator.push( 
                  context, MaterialPageRoute( 
                  builder: (context) => const LegendaryScreen(), 
                  ), 
                ); 
               } 
              else if (index == 2) { 
                Navigator.push( 
                  context, MaterialPageRoute( 
                    builder: (context) => const HomeScreen(), 
                    ), 
                  ); 
                } else if (index == 3) { 
              Navigator.push( 
                context, MaterialPageRoute( 
                  builder: (context) => const StarterScreen(), 
                 ), 
               ); 
             } else if (index == 4) { 
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
    );
  }
}

