// /lib/screens/itineraries/culinary_seekers_screen.dart

import 'package:flutter/material.dart';
import './activity_tile.dart';

class CulinaryActivitiesScreen extends StatelessWidget {
  const CulinaryActivitiesScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: const Text('Culinary Activities in Seoul'),
        backgroundColor: const Color.fromARGB(255, 159, 30, 21),
      ),
      body: ListView(
        children: const [
          ActivityTile(
            title: 'Samgyetang at Tosokchon',
            description:
                'Relish the traditional Korean ginseng chicken soup at Tosokchon, a restaurant famous for its authentic flavors.',
            imagePath: 'assets/images/food_screen/tosokchon.jpg',
          ),
          ActivityTile(
            title: 'BBQ Experience at Mapo Jeong Daepo',
            description:
                'Dive into the world of Korean BBQ at Mapo Jeong Daepo, known for its high-quality meats and traditional grilling techniques.',
            imagePath: 'assets/images/food_screen/mapo_jeong_daepo.jpg',
          ),
          ActivityTile(
            title: 'Noodles at Myeongdong Kyoja',
            description:
                'Satisfy your cravings with handmade kalguksu (knife-cut noodle soup) at the legendary Myeongdong Kyoja.',
            imagePath: 'assets/images/food_screen/myeongdong_kyoja.jpg',
          ),
        ],
      ),
    );
  }
}
