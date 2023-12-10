// /lib/screens/itineraries/adventure_enthusiasts_screen.dart

import 'package:flutter/material.dart';
import './activity_tile.dart';

class AdventureEnthusiastsScreen extends StatelessWidget {
  const AdventureEnthusiastsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: const Text('Adventure Activities in Seoul'),
        backgroundColor: const Color.fromARGB(255, 159, 30, 21),
      ),
      body: ListView(
        children: const [
          ActivityTile(
            title: 'Namsan Seoul Tower Cable Car Ride',
            description:
                'Experience breathtaking views of Seoul as you take a cable car ride up to the Namsan Seoul Tower. This is not just about the destination but also the exhilarating journey upwards.',
            imagePath: 'assets/images/adventure_screen/namsan_cable.jpg',
          ),
          ActivityTile(
            title: 'Hangang River Zipline',
            description:
                "Get your adrenaline pumping by ziplining over the Han River, offering both thrills and a unique perspective of Seoul's cityscape.",
            imagePath: 'assets/images/adventure_screen/zipline.jpg',
          ),
          ActivityTile(
            title: 'Climbing Bukhansan Mountain',
            description:
                "Embrace the challenge of hiking up Bukhansan, one of Seoul's most famous mountains. The panoramic view from the top is a reward for your adventurous effort.",
            imagePath: 'assets/images/adventure_screen/bukhansan.jpg',
          ),
        ],
      ),
    );
  }
}
