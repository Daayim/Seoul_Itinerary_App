// /lib/screens/itinerary_selection_screen.dart

import 'package:flutter/material.dart';
import 'itineraries/adventure_enthusiasts_screen.dart';
import 'itineraries/history_aficionados_screen.dart';
import 'itineraries/culinary_seekers_screen.dart';
import 'itineraries/nightlife_revelers_screen.dart';

class ItinerarySelectionScreen extends StatefulWidget {
  const ItinerarySelectionScreen({Key? key}) : super(key: key);

  @override
  _ItinerarySelectionScreenState createState() =>
      _ItinerarySelectionScreenState();
}

class _ItinerarySelectionScreenState extends State<ItinerarySelectionScreen> {
  late Future<void> _loadingImages;

  @override
  void initState() {
    super.initState();
    _loadingImages = _loadImages();
  }

  //I implemented precacheImages to avoid empty screen while images load.
  Future<void> _loadImages() async {
    await Future.wait([
      precacheImage(const AssetImage('assets/images/adventure.jpg'), context),
      precacheImage(const AssetImage('assets/images/history.jpg'), context),
      precacheImage(const AssetImage('assets/images/culinary.jpg'), context),
      precacheImage(const AssetImage('assets/images/nightlife.jpg'), context),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select an Itinerary'),
        backgroundColor: Colors.blue,
      ),
      body: FutureBuilder<void>(
        future: _loadingImages,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return _buildGridView(); // your GridView once images are loaded
          } else {
            return const Center(
                child: CircularProgressIndicator()); // Loading screen
          }
        },
      ),
    );
  }

  GridView _buildGridView() {
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 10.0, // spacing between columns
      mainAxisSpacing: 10.0, // spacing between rows
      padding: const EdgeInsets.all(10.0),
      childAspectRatio: MediaQuery.of(context).size.width /
          (MediaQuery.of(context).size.height - AppBar().preferredSize.height),
      children: <Widget>[
        _buildTile(
            context, 'Adventure Enthusiasts', 'assets/images/adventure.jpg'),
        _buildTile(context, 'History Aficionados', 'assets/images/history.jpg'),
        _buildTile(context, 'Culinary Seekers', 'assets/images/culinary.jpg'),
        _buildTile(
            context, 'Nightlife Revelers', 'assets/images/nightlife.jpg'),
      ],
    );
  }

  Widget _buildTile(BuildContext context, String title, String imagePath) {
    IconData iconData = Icons.help; // Default initialization

    switch (title) {
      case 'Adventure Enthusiasts':
        iconData = Icons.terrain;
        break;
      case 'History Aficionados':
        iconData = Icons.history_edu;
        break;
      case 'Culinary Seekers':
        iconData = Icons.fastfood;
        break;
      case 'Nightlife Revelers':
        iconData = Icons.music_note;
        break;
    }

    return GestureDetector(
      onTap: () {
        _navigateToActivityScreen(context, title);
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(imagePath, fit: BoxFit.cover),
            Center(
              child: Column(
                mainAxisSize:
                    MainAxisSize.min, // makes the column take minimal space
                children: [
                  Icon(iconData,
                      size: 50.0, color: Colors.white.withOpacity(0.7)),
                  const SizedBox(
                      height:
                          10.0), // optional, gives some space between icon and text
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12.0, vertical: 6.0),
                    decoration: BoxDecoration(
                      color: Colors.black54,
                      borderRadius:
                          BorderRadius.circular(15.0), // rounded corners
                    ),
                    child: Text(title,
                        style: const TextStyle(color: Colors.white)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _navigateToActivityScreen(BuildContext context, String category) {
    if (category == 'Adventure Enthusiasts') {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => const AdventureEnthusiastsScreen()),
      );
    } else if (category == 'History Aficionados') {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => const HistoryActivitiesScreen()),
      );
    } else if (category == 'Culinary Seekers') {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => const CulinaryActivitiesScreen()),
      );
    } else if (category == 'Nightlife Revelers') {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => const NightlifeActivitiesScreen()),
      );
    }
  }
}
