class Book {
  String imageUrl;
  String title;
  String author;
  double price;

  Book({
    required this.imageUrl,
    required this.title,
    required this.author,
    required this.price,
  });
}

final List<Book> book = [
  Book(
      imageUrl: 'assets/Fatherhood.png',
      title: 'FatherHood',
      author: 'Marcus Berkmann',
      price: 19.99),
  Book(
      imageUrl: 'assets/How To Be The Best In Time And Space.png',
      title: 'The Time Travellers',
      author: 'Stride Lottie',
      price: 15.99),
  Book(
      imageUrl: 'assets/The Zoo.png',
      title: 'The Zoo',
      author: 'Christopher Wilson',
      price: 12.99),
  Book(
      imageUrl: 'assets/In A Land Of Paper Gods.png',
      title: 'In A Land Of Paper Gods',
      author: 'Rebecca Mackenzie',
      price: 14.99),
  Book(
      imageUrl: 'assets/Tattletale.png',
      title: 'Tattletale',
      author: 'Sarah J.',
      price: 13.99),
  Book(
      imageUrl: 'assets/The Fatal Tree.png',
      title: 'The Fatal Tree',
      author: 'Jake Amott',
      price: 17.99),
  Book(
      imageUrl: 'assets/Day Four.png',
      title: 'Day Four',
      author: 'Sarah',
      price: 16.99),
  Book(
      imageUrl: 'assets/D2D.png',
      title: 'Door To Door',
      author: 'Edward Humes',
      price: 20.99),
];
