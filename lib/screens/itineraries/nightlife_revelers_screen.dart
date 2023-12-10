// /lib/screens/itineraries/nightlife_revelers_screen.dart

import 'package:flutter/material.dart';
import './activity_tile.dart';

class NightlifeActivitiesScreen extends StatelessWidget {
  const NightlifeActivitiesScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: const Text('Night Life Activities in Seoul'),
        backgroundColor: const Color.fromARGB(255, 159, 30, 21),
      ),
      body: ListView(
        children: const [
          ActivityTile(
            title: 'Hongdae Night Street',
            description:
                'Known for its youthful and lively atmosphere, Hongdae is filled with clubs, bars, street performances, and diverse entertainment spots that come alive at night.',
            imagePath: 'assets/images/nightlife_screen/hongdae.jpg',
          ),
          ActivityTile(
            title: 'Namsan Seoul Tower Illumination',
            description:
                "Enjoy panoramic night views of Seoul from Namsan Tower, beautifully illuminated. It's also popular for its love locks.",
            imagePath: 'assets/images/nightlife_screen/namsan.jpg',
          ),
          ActivityTile(
            title: 'Han River Night Cruise',
            description:
                'lide through the shimmering waters of the Han River under the night sky, taking in the illuminated sights of Seoul from a serene vantage point.',
            imagePath: 'assets/images/nightlife_screen/han_cruise.jpg',
          ),
        ],
      ),
    );
  }
}
