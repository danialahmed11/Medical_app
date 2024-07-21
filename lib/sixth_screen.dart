import 'package:flutter/material.dart';

class MySixthScreen extends StatelessWidget {
  const MySixthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Your cart'),
        ),
        body: Column(
          children: [
            Container(
              height: 50,
              width: 100,
              child: Image.network(
                  "https://media.istockphoto.com/id/185235418/photo/prescription-medication-medicine-pill-tablets.jpg?s=1024x1024&w=is&k=20&c=dE8U3uyC5nFx4SQ55OOUKSgjAgUyN9JAUP5g5GfLJrQ="),
            ),
          ],
        ));
  }
}
