import 'package:flutter/material.dart';

class CheckoutScreen extends StatelessWidget {
  final double totalPrice;

  CheckoutScreen({required this.totalPrice});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkout'),
        backgroundColor: Color(0xff5ABD8C),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Review your order', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            Text('Total Price: \$${totalPrice.toStringAsFixed(2)}', style: TextStyle(fontSize: 18)),
            SizedBox(height: 20),
            Text('Enter your details to complete the purchase', style: TextStyle(fontSize: 18)),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Name',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Address',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Credit Card Number',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Handle checkout process
                },
                child: Text('Place Order', style: TextStyle(fontSize: 18)),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff5ABD8C),
                  padding: EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

