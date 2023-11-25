import '../book/Book.dart';

class Reader {
  final String name;
  final int age;
  final int libraryCard;
  final List<Book> _books;
  final int id;

  Reader(this.name, this.age, this.libraryCard, this._books, this.id);

  List<Book> get books => _books;

  @override
  String toString() {
    return 'Name: $name Books: $_books Library card: $libraryCard, Age: $age';
  }
}
