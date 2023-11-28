import '../book/Book.dart';

class Reader {
  final String name;
  final DateTime dateTime;
  final int libraryCard;
  final List<Book> books;
  final int id;

  Reader(this.name, this.dateTime, this.libraryCard, this.books, this.id);

  @override
  String toString() {
    return 'Name: $name Books: $books Library card: $libraryCard, Age: $dateTime';
  }
}
