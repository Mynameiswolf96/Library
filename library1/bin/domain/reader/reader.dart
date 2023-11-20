import '../book/Book.dart';

class Reader {
  final String name;
  final int age;
  final int libraryCard;
  final List<Book> books;

  const Reader(this.name, this.age, this.libraryCard, this.books);

 void getBook(Book book) {
    if (books.length < 3) {
      books.add(book);
    }
    else{
      print('У вас перебор книг');
    }
  }

  void giveAwayBook(Book book) {
    books.remove(book);
  }

  String toString() {
    return 'Name: $name Books: $books Library card: $libraryCard, Age: $age';
  }
}
