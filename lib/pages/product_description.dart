import 'package:flutter/material.dart';

class ProductDescriptionPage extends StatelessWidget {
  const ProductDescriptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Product Details',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSsi3PfMbwPZ0tW6J1ZONIzw3mp0dgjx3eiY7nTs1aB4JWEdBvP2B9H6f4fGwom4kl9AvU&usqp=CAU',
                fit: BoxFit.contain,
                width: double.infinity,
                height: 200, //Adjust the height accordingly
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Puma Footwear',
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Product Description',
              style: TextStyle(fontSize: 16, height: 1.5),
            ),
            const SizedBox(height: 20),
            Text(
              'Rs.300',
              style: TextStyle(
                fontSize: 20,
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              maxLines: 3,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                ),
                labelText: 'Enter Your Billing Address',
              ),
            ),
            const SizedBox(height: 20),
            SizedBox( 
              width: double.infinity,
              child: ElevatedButton( 
                style: ElevatedButton.styleFrom( 
                  padding: EdgeInsets.symmetric(vertical: 15),
                  backgroundColor: Colors.indigoAccent
                ),
                child: const Text(
                  'Buy Now',
                style: TextStyle( fontSize: 18, color: Colors.white),
                ),
                onPressed: (){ 
                  
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
