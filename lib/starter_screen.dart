import 'package:flutter/material.dart';

import 'home_screen.dart';
import 'pokemon_league_screen.dart';
import 'gym_screen.dart';

class StarterScreen extends StatefulWidget {
  const StarterScreen({super.key});

  @override
  State<StarterScreen> createState() => _StarterScreenState();
}

class _StarterScreenState extends State<StarterScreen> {
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                // TITLE
                const Center(
                  child: Text(
                    'STARTERS',
                    style: TextStyle(
                      color: Color(0xFF124A49),
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                const SizedBox(height: 8),

                // =========================
                // TURTWIG
                // =========================
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 105,
                      height: 90,
                      decoration: BoxDecoration(
                        color: const Color(0xFF07C15B),
                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(28),
                      ),
                      child: Image.asset(
                        'assets/turtwig.png',
                        fit: BoxFit.contain,
                      ),
                    ),

                    const SizedBox(width: 8),

                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'TURTWIG #001 🌿',
                            style: TextStyle(
                              color: Color(0xFF124A49),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          const SizedBox(height: 8),

                          const Text(
                            'Turtwig evolves into Grotle starting '
                            'at level 18, which then evolves into '
                            'Torterra starting at level 32.',
                            style: TextStyle(
                              color: Color(0xFF124A49),
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 5),

                // TURTWIG EVOLUTION
                evolutionRow(
                  const Color(0xFF07C15B),
                  [
                    'assets/turtwig.png',
                    'assets/grotle.png',
                    'assets/torterra.png',
                  ],
                ),

                const SizedBox(height: 16),

                // =========================
                // CHIMCHAR
                // =========================
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 105,
                      height: 90,
                      decoration: BoxDecoration(
                        color: const Color(0xFFE95A3A),
                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(28),
                      ),
                      child: Image.asset(
                        'assets/chimchar.png',
                        fit: BoxFit.contain,
                      ),
                    ),

                    const SizedBox(width: 8),

                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'CHIMCHAR #004 🔥',
                            style: TextStyle(
                              color: Color(0xFF124A49),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          const SizedBox(height: 8),

                          const Text(
                            'Chimchar evolves into Monferno '
                            'starting at level 14, which then '
                            'evolves into Infernape starting at level 36.',
                            style: TextStyle(
                              color: Color(0xFF124A49),
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 5),

                // CHIMCHAR EVOLUTION
                evolutionRow(
                  const Color(0xFFE95A3A),
                  [
                    'assets/chimchar.png',
                    'assets/monferno.png',
                    'assets/infernape.png',
                  ],
                ),

                const SizedBox(height: 16),

                // =========================
                // PIPLUP
                // =========================
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 105,
                      height: 90,
                      decoration: BoxDecoration(
                        color: const Color(0xFF74D7DA),
                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(28),
                      ),
                      child: Image.asset(
                        'assets/piplup.png',
                        fit: BoxFit.contain,
                      ),
                    ),

                    const SizedBox(width: 8),

                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'PIPLUP #007 💧',
                            style: TextStyle(
                              color: Color(0xFF124A49),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          const SizedBox(height: 8),

                          const Text(
                            'Piplup evolves into Prinplup '
                            'starting at level 16, which then '
                            'evolves into Empoleon starting at level 36.',
                            style: TextStyle(
                              color: Color(0xFF124A49),
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 5),

                // PIPLUP EVOLUTION
                evolutionRow(
                  const Color(0xFF74D7DA),
                  [
                    'assets/piplup.png',
                    'assets/prinplup.png',
                    'assets/empoleon.png',
                  ],
                ),

                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),

      // =========================
      // BOTTOM NAVIGATION
      // =========================
      bottomNavigationBar: BottomNavigationBar( 
        currentIndex: 3, 
        onTap: (index) { 
          if (index == 0) { 
            Navigator.push( 
              context, MaterialPageRoute( 
                builder: (context) => const LeagueScreen(), 
                ), 
              ); 
            } else if (index == 1) { 
            // Navigator.push( 
            //   context, MaterialPageRoute(
            //     builder: (context) => const LegendaryScreen(),
            //     ),
            //   );
            } else if (index == 2) { 
              Navigator.push( 
                context, MaterialPageRoute( 
                  builder: (context) => const HomeScreen(), 
                  ), 
                ); 
              } else if (index == 3) { 
            } else if (index == 3) { 
              // Already on Starter 
            } else if (index == 4) { 
              Navigator.push( 
                context, MaterialPageRoute( 
                  builder: (context) => const GymScreen(), 
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
      );
    }

  // =========================
  // EVOLUTION ROW
  // =========================
  Widget evolutionRow(
    Color backgroundColor,
    List<String> images,
  ) {
    return Container(
      width: double.infinity,
      height: 66,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: backgroundColor,
        border: Border.all(
          color: Colors.black,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            images[0],
            width: 55,
            height: 55,
            fit: BoxFit.contain,
          ),

          const Text(
            '→',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),

          Image.asset(
            images[1],
            width: 55,
            height: 55,
            fit: BoxFit.contain,
          ),

          const Text(
            '→',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),

          Image.asset(
            images[2],
            width: 55,
            height: 55,
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }
}

