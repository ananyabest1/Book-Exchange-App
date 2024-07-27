import 'package:flutter/material.dart';
import 'bookmodel.dart';

class WishlistScreen extends StatefulWidget {
  @override
  _WishlistScreenState createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
  List<Book> wishlist = book.sublist(0, 5); // Sample wishlist items

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wishlist'),
        backgroundColor: Color(0xff5ABD8C),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: wishlist.isEmpty
                  ? Center(child: Text('No items in wishlist', style: TextStyle(fontSize: 18, color: Colors.grey)))
                  : ListView.builder(
                itemCount: wishlist.length,
                itemBuilder: (context, index) {
                  Book book = wishlist[index];
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
                        onPressed: () {
                          setState(() {
                            wishlist.removeAt(index);
                          });
                        },
                      ),
                      onTap: () {
                        // Handle book tap
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

