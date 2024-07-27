import 'package:flutter/material.dart';
import 'Checkout_screen.dart';
import 'bookmodel.dart';


class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List<Book> cart = book.sublist(0, 3); // Sample cart items
  double totalPrice = 0.0;

  @override
  void initState() {
    super.initState();
    _calculateTotalPrice();
  }

  void _calculateTotalPrice() {
    double price = 0.0;
    cart.forEach((book) {
      price += book.price; // Assuming each book has a price field
    });
    setState(() {
      totalPrice = price;
    });
  }

  void _removeFromCart(int index) {
    setState(() {
      cart.removeAt(index);
      _calculateTotalPrice();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
        backgroundColor: Color(0xff5ABD8C),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: cart.isEmpty
                  ? Center(child: Text('No items in cart', style: TextStyle(fontSize: 18, color: Colors.grey)))
                  : ListView.builder(
                itemCount: cart.length,
                itemBuilder: (context, index) {
                  Book book = cart[index];
                  return Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ListTile(
                      contentPadding: EdgeInsets.all(10),
                      leading: Hero(
                        tag: book.imageUrl,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            book.imageUrl,
                            fit: BoxFit.cover,
                            width: 50,
                            height: 50,
                          ),
                        ),
                      ),
                      title: Text(book.title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      subtitle: Text('by ${book.author}', style: TextStyle(fontSize: 16, color: Colors.grey)),
                      trailing: IconButton(
                        icon: Icon(Icons.delete, color: Colors.red),
                        onPressed: () => _removeFromCart(index),
                      ),
                      onTap: () {
                        // Handle book tap
                      },
                    ),
                  );
                },
              ),
            ),
            // Total Price
            if (cart.isNotEmpty)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Total:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    Text('\$${totalPrice.toStringAsFixed(2)}', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            // Checkout Button
            if (cart.isNotEmpty)
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CheckoutScreen(totalPrice: totalPrice)),
                    );
                  },
                  child: Text('Checkout', style: TextStyle(fontSize: 18)),
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
