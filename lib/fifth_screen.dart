import 'package:flutter/material.dart';
import 'package:my_app/sixth_screen.dart';

class MyFifthScreen extends StatefulWidget {
  const MyFifthScreen({super.key});

  @override
  State<MyFifthScreen> createState() => _MyFifthScreenState();
}

class _MyFifthScreenState extends State<MyFifthScreen> {
  @override
  Widget build(BuildContext context) {
    // Get the width of the screen
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text("sugar free gold low calories"),
      ),
      body: SingleChildScrollView(
        // To make the screen scrollable if content overflows
        child: Padding(
          padding:
              const EdgeInsets.all(16.0), // Padding around the main content
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  height: 200,
                  width: screenWidth * 0.9, // Responsive width
                  color: const Color.fromARGB(
                      248, 248, 248, 1), // Background color of the container
                  child: Image.network(
                    "https://s3-alpha-sig.figma.com/img/65e5/109d/bfedb53f2363ce42dba6abbd8b3f6fe8?Expires=1722211200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=d0fMArTA5LwcomJNdbRMRHCXI2jdkn~PgOj7wEn4g~e6tcAyXHx72-7i-S08qWglh6KRRwIfkXYu4BYtRsNJNeH6a2Va3Paz5n7xATDfmLXFXWaQ61hxgK6VA9ZmwnLPkDJBDIruZsGjbpQdn1V-nYJ37VYLNxPUcSl~3jdtep2xGgF~Me6B1AymllFBUd~yXE-MpdI0-kEA7Or5rpOm6KmfOO20M0ZQL8OQGSivB1PiHtNmDyugLfbFFiHzZ7eLXMHah~VXdZnGL38nwMk7C0z9xO4eHeSsF0rt8VxwPsWpi-zwXbMQ8ykxCZMW5QZGtzhR1U-8ldLT1eqy5i97Dg__",
                    fit: BoxFit.cover,
                    // Adjust fit as needed
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.add_shopping_cart),
                    SizedBox(width: 4),
                    Text("Add to cart"),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              const Text('Package size',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    color: Colors.grey,
                    height: 40,
                    width: 60,
                    child: const Text('Rs.106\n500piece'),
                  ),
                  const SizedBox(width: 16),
                  Container(
                    alignment: Alignment.center,
                    color: Colors.grey,
                    height: 40,
                    width: 60,
                    child: const Text('Rs.160\n600piece'),
                  ),
                  const SizedBox(width: 16),
                  Container(
                    alignment: Alignment.center,
                    color: Colors.grey,
                    height: 40,
                    width: 60,
                    child: const Text('Rs.200\n800piece'),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const Text('Product Description',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const Text(
                  'This is a sugar-free, low-calorie sweetener perfect for your beverages and desserts.'),
              const SizedBox(height: 16),
              const Text('Ingredients',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const Text('Sucralose, Dextrose, Maltodextrin.'),
              const SizedBox(height: 16),
              const Text('Expiry Date',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const Text('12/12/2025'),
              const SizedBox(height: 16),
              const Text('Brand Name',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const Text('Sugar Free Gold'),
              const SizedBox(height: 16),
              const Text('Rating',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Row(
                children: List.generate(
                    5, (index) => const Icon(Icons.star, color: Colors.yellow)),
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: screenWidth * 0.9,
                child: ElevatedButton(
                  onPressed: () {
                    // Navigate to next screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MySixthScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue, // Background color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: const Text('Go to Cart'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
