import 'package:flutter/material.dart';

class PokemonLeagueTeamScreen extends StatelessWidget {
  final String memberName;

  const PokemonLeagueTeamScreen({
    super.key,
    required this.memberName,
  });

  final Map<String, Map<String, dynamic>> leagueMembers = const {
    'Aaron': {
      'type': 'Bug',
      'image': 'assets/aaron.png',
      'pokemon': [
        {
          'name': 'Yanmega',
          'level': 'Lv. 49',
          'image': 'assets/yanmega.png',
          'moves': 'Bug Buzz, U-Turn, Double Team, Air Slash',
        },
        {
          'name': 'Scizor',
          'level': 'Lv. 49',
          'image': 'assets/scizor.png',
          'moves': 'Iron Head, Night Slash, X-Scissor, Quick Attack',
        },
        {
          'name': 'Vespiquen',
          'level': 'Lv. 50',
          'image': 'assets/vespiquen.png',
          'moves': 'Attack Order, Defend Order, Heal Order, Power Gem',
        },
        {
          'name': 'Heracross',
          'level': 'Lv. 51',
          'image': 'assets/heracross.png',
          'moves': 'Megahorn, Close Combat, Stone Edge, Night Slash',
        },
        {
          'name': 'Drapion',
          'level': 'Lv. 53',
          'image': 'assets/drapion.png',
          'moves': 'X-Scissor, Cross Poison, Ice Fang, Aerial Ace',
        },
      ],
    },

    'Bertha': {
      'type': 'Ground',
      'image': 'assets/bertha.png',
      'pokemon': [
        {
          'name': 'Whiscash',
          'level': 'Lv. 50',
          'image': 'assets/whiscash.png',
          'moves': 'Earthquake, Aqua Tail, Zen Headbutt, Sandstorm',
        },
        {
          'name': 'Gliscor',
          'level': 'Lv. 53',
          'image': 'assets/gliscor.png',
          'moves': 'Earthquake, Ice Fang, Thunder Fang, Fire Fang',
        },
        {
          'name': 'Golem',
          'level': 'Lv. 52',
          'image': 'assets/golem.png',
          'moves': 'Earthquake, Fire Punch, Thunder Punch, Sandstorm',
        },
        {
          'name': 'Hippowdon',
          'level': 'Lv. 52',
          'image': 'assets/hippowdon.png',
          'moves': 'Earthquake, Stone Edge, Crunch, Yawn',
        },
        {
          'name': 'Rhyperior',
          'level': 'Lv. 55',
          'image': 'assets/rhyperior.png',
          'moves': 'Earthquake, Rock Wrecker, Avalanche, Megahorn',
        },
      ],
    },

    'Flint': {
      'type': 'Fire',
      'image': 'assets/flint.png',
      'pokemon': [
        {
          'name': 'Houndoom',
          'level': 'Lv. 52',
          'image': 'assets/houndoom.png',
          'moves': 'Flamethrower, Dark Pulse, Sludge Bomb, Sunny Day',
        },
        {
          'name': 'Flareon',
          'level': 'Lv. 55',
          'image': 'assets/flareon.png',
          'moves': 'Overheat, Giga Impact, Quick Attack, Will-O-Wisp',
        },
        {
          'name': 'Rapidash',
          'level': 'Lv. 53',
          'image': 'assets/rapidash.png',
          'moves': 'Flare Blitz, Solar Beam, Bounce, Sunny Day',
        },
        {
          'name': 'Infernape',
          'level': 'Lv. 55',
          'image': 'assets/infernape.png',
          'moves': 'Flare Blitz, Thunder Punch, Mach Punch, Earthquake',
        },
        {
          'name': 'Magmortar',
          'level': 'Lv. 57',
          'image': 'assets/magmortar.png',
          'moves': 'Flamethrower, Thunderbolt, Solar Beam, Hyper Beam',
        },
      ],
    },

    'Lucian': {
      'type': 'Psychic',
      'image': 'assets/lucian.png',
      'pokemon': [
        {
          'name': 'Mr. Mime',
          'level': 'Lv. 53',
          'image': 'assets/mrmime.png',
          'moves': 'Psychic, Reflect, Light Screen, Thunderbolt',
        },
        {
          'name': 'Espeon',
          'level': 'Lv. 55',
          'image': 'assets/espeon.png',
          'moves': 'Psychic, Shadow Ball, Signal Beam, Quick Attack',
        },
        {
          'name': 'Bronzong',
          'level': 'Lv. 54',
          'image': 'assets/bronzong.png',
          'moves': 'Psychic, Gyro Ball, Earthquake, Calm Mind',
        },
        {
          'name': 'Alakazam',
          'level': 'Lv. 56',
          'image': 'assets/alakazam.png',
          'moves': 'Psychic, Energy Ball, Focus Blast, Reflect',
        },
        {
          'name': 'Gallade',
          'level': 'Lv. 59',
          'image': 'assets/gallade.png',
          'moves': 'Drain Punch, Psycho Cut, Leaf Blade, Stone Edge',
        },
      ],
    },

    'Cynthia': {
      'type': 'Champion',
      'image': 'assets/cynthia.png',
      'pokemon': [
        {
          'name': 'Spiritomb',
          'level': 'Lv. 58',
          'image': 'assets/spiritomb.png',
          'moves': 'Dark Pulse, Psychic, Silver Wind, Shadow Ball',
        },
        {
          'name': 'Roserade',
          'level': 'Lv. 58',
          'image': 'assets/roserade.png',
          'moves': 'Energy Ball, Sludge Bomb, Shadow Ball, Toxic',
        },
        {
          'name': 'Togekiss',
          'level': 'Lv. 60',
          'image': 'assets/togekiss.png',
          'moves': 'Air Slash, Aura Sphere, Water Pulse, Shock Wave',
        },
        {
          'name': 'Lucario',
          'level': 'Lv. 60',
          'image': 'assets/lucario.png',
          'moves': 'Aura Sphere, Extreme Speed, Shadow Ball, Stone Edge',
        },
        {
          'name': 'Milotic',
          'level': 'Lv. 58',
          'image': 'assets/milotic.png',
          'moves': 'Surf, Ice Beam, Mirror Coat, Dragon Pulse',
        },
        {
          'name': 'Garchomp',
          'level': 'Lv. 62',
          'image': 'assets/garchomp.png',
          'moves': 'Dragon Rush, Earthquake, Flamethrower, Giga Impact',
        },
      ],
    },
  };

  @override
  Widget build(BuildContext context) {
    final member = leagueMembers[memberName]!;

    return Scaffold(
      backgroundColor: const Color(0xFFFDD673),

      appBar: AppBar(
        backgroundColor: const Color(0xFFFDD673),
        title: Text(memberName),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // League member
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xFFE7993E),
                border: Border.all(color: Colors.black, width: 2),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [
                  Image.asset(
                    member['image'],
                    height: 180,
                  ),

                  const SizedBox(height: 8),

                  Text(
                    memberName,
                    style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Text(
                    member['type'],
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 16),

            // Pokémon team
            for (var pokemon in member['pokemon'])
              Container(
                width: double.infinity,
                margin: const EdgeInsets.only(bottom: 12),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: const Color(0xFFB97832),
                  border: Border.all(color: Colors.black, width: 2),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      pokemon['image'],
                      width: 90,
                      height: 90,
                    ),

                    const SizedBox(width: 12),

                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            pokemon['name'],
                            style: const TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          Text(
                            pokemon['level'],
                            style: const TextStyle(fontSize: 17),
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            'Moves:',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            pokemon['moves'],
                            style: const TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
