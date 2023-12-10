// /lib/screens/welcome_screen.dart

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'itinerary_selection_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _fadeController;

  @override
  void initState() {
    super.initState();
    _fadeController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    _fadeController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand, // This will make the Stack fill the entire screen
        children: <Widget>[
          // Image covering the entire screen
          Image.asset(
            'assets/images/seoul.jpg',
            fit: BoxFit.cover,
          ),
          // Contents on top of the image
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FadeTransition(
                opacity: _fadeController,
                child: Text(
                  'Welcome to Seoul',
                  style: GoogleFonts.poppins(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              FadeTransition(
                opacity: _fadeController,
                child: ElevatedButton(
                  onPressed: () async {
                    await Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const ItinerarySelectionScreen()));
                    if (mounted) {
                      // Check if the widget is still in the tree
                      _fadeController.reset(); // Reset animation
                      _fadeController.forward(); // Start the animation again
                    }
                  },
                  child: const Text('Explore one-day itineraries in Seoul'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _fadeController.dispose();
    super.dispose();
  }
}
