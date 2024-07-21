import 'package:flutter/material.dart';
import 'package:my_app/fourth_screen.dart';
import 'package:my_app/third_screen.dart';

class MySecondScreen extends StatefulWidget {
  const MySecondScreen({super.key});

  @override
  _MySecondScreenState createState() => _MySecondScreenState();
}

class _MySecondScreenState extends State<MySecondScreen> {
  // Add any state variables here if needed
  bool _isSkipped = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.blueAccent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 200,
                  width: 200,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white10,
                  ),
                  child: ClipOval(
                    child: Image.network(
                      'https://cdn.pixabay.com/photo/2014/02/03/11/31/medications-257336_1280.jpg', // Replace with your image URL or local asset
                      fit: BoxFit.cover,
                      height: 200,
                      width: 200,
                    ),
                  ),
                  alignment: Alignment.center,
                ),
                const SizedBox(height: 5), // Space between circle and text
                const Text(
                  'View and buy ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 5), // Space between circle and text
                const Text(
                  'Medicine Online',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 5), // Space between circle and text
                const Text(
                  'We provide medicine at your door step',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 5), // Space between circle and text
                const Text(
                  'Feel easy and safe way as we fulfill your requirement',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 5), // Space between circle and text
                const Text(
                  'Provide feedback and points',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MyFourthScreen(),
                      ),
                    );
                  },
                  child: const Text('Skip'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Navigate to next screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MyThirdScreen(),
                      ),
                    );
                  },
                  child: const Text('Next'),
                ),
              ],
            ),
          ),
          if (_isSkipped)
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Skipped!',
                style: TextStyle(color: Colors.red, fontSize: 20),
              ),
            ),
        ],
      ),
    );
  }
}
