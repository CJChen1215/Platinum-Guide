import 'package:flutter/material.dart';

class GymLeaderTeamScreen extends StatelessWidget {
  final String leaderName;

  const GymLeaderTeamScreen({
    super.key,
    required this.leaderName,
  });

  // Gym Leader information
  final Map<String, Map<String, dynamic>> gymLeaders = const {
    'Roark': {
      'type': 'ROCK TYPE',
      'leaderImage': 'assets/roark.png',
      'pokemon': [
        {
          'name': 'Geodude',
          'level': 'Lv. 12',
          'image': 'assets/geodude.png',
          'moves': [
            'Rock Throw',
            'Stealth Rock',
          ],
        },
        {
          'name': 'Onix',
          'level': 'Lv. 12',
          'image': 'assets/onix.png',
          'moves': [
            'Rock Throw',
            'Stealth Rock',
            'Screech',
          ],
        },
        {
          'name': 'Cranidos',
          'level': 'Lv. 14',
          'image': 'assets/cranidos.png',
          'moves': [
            'Headbutt',
            'Pursuit',
            'Leer',
          ],
        },
      ],
    },

    'Gardenia': {
      'type': 'GRASS TYPE',
      'leaderImage': 'assets/gardenia.png',
      'pokemon': [
        {
          'name': 'Turtwig',
          'level': 'Lv. 20',
          'image': 'assets/turtwig.png',
          'moves': [
            'Grass Knot',
            'Razor Leaf',
            'Sunny Day',
            'Reflect',
          ],
        },
        {
          'name': 'Cherrim',
          'level': 'Lv. 20',
          'image': 'assets/cherrim.png',
          'moves': [
            'Grass Knot',
            'Leech Seed',
            'Magical Leaf',
            'Safeguard',
          ],
        },
        {
          'name': 'Roserade',
          'level': 'Lv. 22',
          'image': 'assets/roserade.png',
          'moves': [
            'Grass Knot',
            'Poison Sting',
            'Magical Leaf',
            'Stun Spore',
          ],
        },
      ],
    },

    'Fantina': {
      'type': 'GHOST TYPE',
      'leaderImage': 'assets/fantina.png',
      'pokemon': [],
    },

    'Maylene': {
      'type': 'FIGHTING TYPE',
      'leaderImage': 'assets/maylene.png',
      'pokemon': [],
    },

    'Crasher Wake': {
      'type': 'WATER TYPE',
      'leaderImage': 'assets/crasher_wake.png',
      'pokemon': [],
    },

    'Byron': {
      'type': 'STEEL TYPE',
      'leaderImage': 'assets/byron.png',
      'pokemon': [],
    },

    'Candice': {
      'type': 'ICE TYPE',
      'leaderImage': 'assets/candice.png',
      'pokemon': [],
    },

    'Volkner': {
      'type': 'ELECTRIC TYPE',
      'leaderImage': 'assets/volkner.png',
      'pokemon': [],
    },
  };

  @override
  Widget build(BuildContext context) {
    final leader = gymLeaders[leaderName];

    return Scaffold(
      backgroundColor: const Color(0xFFFDD673),

      appBar: AppBar( backgroundColor: const Color(0xFFFDD673), 
      elevation: 0, leading: 
        IconButton( icon: const Icon( Icons.arrow_back, color: Color(0xFF124A49), size: 30, ), 
        onPressed: () { Navigator.pop(context); }, ), ),
      
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          child: Column(
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 190, 187, 176),
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: leader == null
                        ? const Center(
                            child: Text(
                              'Gym Leader not found',
                              style: TextStyle(
                                color: Color(0xFF124A49),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
                        : Column(
                            children: [
                              // Gym Leader image
                              Expanded(
                                flex: 4,
                                child: Image.asset(
                                  leader['leaderImage'],
                                  fit: BoxFit.contain,
                                ),
                              ),
                              // Gym Leader name and type
                              Text(
                                '${leaderName.toUpperCase()}\n'
                                '(${leader['type']})',
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  color: Color(0xFF124A49),
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  height: 1.0,
                                ),
                              ),
                              const SizedBox(height: 8),
                              // Pokémon team
                              Expanded(
                                flex: 6,
                                child: leader['pokemon'].isEmpty
                                    ? const Center(
                                        child: Text(
                                          'Team information coming soon.',
                                          style: TextStyle(
                                            color: Color(0xFF124A49),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      )
                                    : ListView.builder(
                                        physics:
                                            const AlwaysScrollableScrollPhysics(),
                                        itemCount:
                                            leader['pokemon'].length,
                                        itemBuilder: (context, index) {
                                          final pokemon =
                                              leader['pokemon'][index];
                                          return Expanded(
                                            child: Row(
                                              children: [
                                                // Pokémon image
                                                Expanded(
                                                  flex: 2,
                                                  child: Image.asset(
                                                    pokemon['image'],
                                                    fit: BoxFit.contain,
                                                  ),
                                                ),
                                                // Pokémon information
                                                Expanded(
                                                  flex: 3,
                                                  child: Text(
                                                    '${pokemon['name']} '
                                                    '(${pokemon['level']})\n'
                                                    '${(pokemon['moves'] as List<String>).map((move) => '• $move').join('\n')}',
                                                    style: const TextStyle(
                                                      color:
                                                          Color(0xFF124A49),
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          );
                                        },
                                      ),
                              ),
                            ],
                          ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      // Bottom navigation
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 4,
        onTap: (index) {
          if (index == 4 || index == 2) {
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

