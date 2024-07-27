import 'package:flutter/material.dart';
import 'bookmodel.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController _searchController = TextEditingController();
  List<Book> _searchResults = [];

  void _searchBooks(String query) {
    setState(() {
      _searchResults = book.where((book) => book.title.toLowerCase().contains(query.toLowerCase())).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search'),
        backgroundColor: Color(0xff5ABD8C),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Search Bar
            TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Search for books...',
                prefixIcon: Icon(Icons.search, color: Color(0xff5ABD8C)),
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
              onChanged: (query) => _searchBooks(query),
            ),
            SizedBox(height: 20),
            // Search Results
            Expanded(
              child: _searchResults.isEmpty
                  ? Center(child: Text('No results found', style: TextStyle(fontSize: 18, color: Colors.grey)))
                  : ListView.builder(
                itemCount: _searchResults.length,
                itemBuilder: (context, index) {
                  Book books = _searchResults[index];
                  return GestureDetector(
                    onTap: () {
                      // Handle book tap
                    },
                    child: Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Hero(
                              tag: books.imageUrl,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  books.imageUrl,
                                  fit: BoxFit.cover,
                                  width: 50,
                                  height: 50,
                                ),
                              ),
                            ),
                            SizedBox(width: 20),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    books.title,
                                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'by ${books.author}',
                                    style: TextStyle(fontSize: 16, color: Colors.grey),
                                  ),
                                ],
                              ),
                            ),
                            Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 16),
                          ],
                        ),
                      ),
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
