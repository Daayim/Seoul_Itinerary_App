// /lib/screens/itineraries/history_aficionados_screen.dart

import 'package:flutter/material.dart';
import './activity_tile.dart';

class HistoryActivitiesScreen extends StatelessWidget {
  const HistoryActivitiesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: const Text('History Activities in Seoul'),
        backgroundColor: const Color.fromARGB(255, 159, 30, 21),
      ),
      body: ListView(
        children: const [
          ActivityTile(
            title: 'Gyeongbokgung Palace',
            description:
                "One of the most iconic palaces in South Korea, Gyeongbokgung offers a glimpse into the royal past of the Joseon Dynasty with its majestic architecture and changing of the guard ceremony.",
            imagePath: 'assets/images/history_screen/gyeongbokgung.jpg',
          ),
          ActivityTile(
            title: 'Bukchon Hanok Village',
            description:
                "Wander through narrow alleyways filled with traditional Korean houses, known as 'hanoks'. This village retains a centuries-old ambiance, giving visitors a feel of old Seoul.",
            imagePath: 'assets/images/history_screen/bukchon.jpg',
          ),
          ActivityTile(
            title: 'Jongmyo Shrine',
            description:
                "A UNESCO World Heritage Site, this is a Confucian shrine dedicated to the deceased kings and queens of the Joseon Dynasty, showcasing ancient rituals and architectural beauty.",
            imagePath: 'assets/images/history_screen/jongmyo.jpg',
          ),
        ],
      ),
    );
  }
}
