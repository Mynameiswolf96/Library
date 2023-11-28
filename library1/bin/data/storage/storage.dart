import '../../domain/book/Book.dart';
import '../../domain/librarian/librarian.dart';
import '../../domain/reader/reader.dart';

class Storage {
  final List<Book> _books = [
    Book(10, 'Valera', 'Chronic', 500, 1),
    Book(23, 'Mefody', 'Uchenie', 1000, 113),
    Book(100, 'Noname', 'ZXC', 5000, 114),
    Book(45, 'Vadis', 'Besedka', 1, 115),
    Book(89, 'Tolstoi', 'Voina i mir', 80000, 116),
    Book(100, "Griboedov", 'Gore ot uma', 6000, 117)
  ];
  static const List<Librarian> _librarians = [
    Librarian('Vasya', 1488, 10),
    Librarian('Gena', 228, 11),
    Librarian('Sasha', 1337, 12)
  ];
  final List<Reader> _readers = [
    Reader('Valeron', DateTime(2022, 12, 4), 10205220, [], 1),
    Reader('Vadis', DateTime(2001, 10, 5), 10205221, [], 101),
    Reader('Oleg', DateTime(1980, 5, 3), 10205222, [], 102),
    Reader('Den', DateTime(1870, 12, 4), 10205223, [], 103)
  ];

  void addBookInLibrary(Book book) {
    _books.add(book);
  }

  void removeBookFromLibrary(Book book) {
    _books.remove(book);
  }

  List<Book> fetchBooks() => List.from(_books);

  List<Librarian> fetchLibrarian() => List.from(_librarians);

  List<Reader> fetchReaders() => List.from(_readers);
}
