import '../book/Book.dart';

class Reader {
  final String name;
  final int age;
  final int libraryCard;
  final List<Book> books;
  final int id;

  Reader(this.name, this.age, this.libraryCard, this.books, this.id);

  @override
  String toString() {
    return 'Name: $name Books: $books Library card: $libraryCard, Age: $age';
  }
}
