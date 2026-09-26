import 'package:flutter/material.dart';

import 'gym_leader_team_screen.dart';

class GymScreen extends StatefulWidget {
  const GymScreen({super.key});

  @override
  State<GymScreen> createState() => _GymScreenState();
}

class _GymScreenState extends State<GymScreen> {
  int currentIndex = 4;

  final List<String> gymNames = [ 
    'Roark', 
    'Gardenia', 
    'Maylene', 
    'Crasher Wake', 
    'Fantina', 
    'Byron', 
    'Candice', 
    'Volkner', 
  ];

  final List<String> gymBadges = [
    'assets/roark_badge.png',
    'assets/gardenia_badge.png',
    'assets/maylene_badge.png',
    'assets/wake_badge.png',
    'assets/fantina_badge.png',
    'assets/byron_badge.png',
    'assets/candice_badge.png',
    'assets/volkner_badge.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDD673),

      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),

            const Text(
              'Sinnoh Gym\nLeaders',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF124A49),
                fontSize: 24,
                fontWeight: FontWeight.bold,
                height: 0.95,
              ),
            ),

            const SizedBox(height: 8),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: GridView.builder(
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemCount: gymBadges.length,
                  gridDelegate:
                      const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    childAspectRatio: 1.05,
                  ),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        if (index == 0) {
                        Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => GymLeaderTeamScreen(
                            leaderName: gymNames[index],
                          ),
                        ),
                      );
                    }
                  },
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFFE7993E),
                          border: Border.all(
                            color: Colors.black,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.all(10),
                        child: Image.asset(
                          gymBadges[index],
                          fit: BoxFit.contain,
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

      // Navigation bar is outside the body
      // so it fills the entire bottom area.
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          if (index == 2) {
            Navigator.pop(context);
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

