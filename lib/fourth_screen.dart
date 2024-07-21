import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_app/fifth_screen.dart';

class MyFourthScreen extends StatelessWidget {
  const MyFourthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:
            const Size.fromHeight(200.0), // Set the height of the AppBar
        child: AppBar(
          backgroundColor: Colors.blue, // Set the background color here
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(60),
            ),
          ),
          leading: const CircleAvatar(
            radius: 30,
            backgroundColor: Colors.white12,
          ),
          title: const Text("HI Danial"),
          titleSpacing: 5,
          titleTextStyle: const TextStyle(color: Colors.white24),
        ),
      ),
      body: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MyFifthScreen()),
          );
        },
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white, backgroundColor: Colors.green,
          minimumSize: const Size(150, 50), // Responsive button
        ),
        child: const Text('View Item'),
      ),
    );
  }
}
