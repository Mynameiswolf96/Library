import '../../domain/book/Book.dart';
import '../../domain/librarian/librarian.dart';
import '../../domain/reader/reader.dart';

class Storage {
  final List<Book> _books = [
    Book(10, 'Valera', 'Chronic', 500, 112),
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
    Reader('Valeron', 21, 10205220, [], 100),
    Reader('Vadis', 20, 10205221, [], 101),
    Reader('Oleg', 32, 10205222, [], 102),
    Reader('Den', 105, 10205223, [], 103)
  ];

  List<Book> addBookInLibrary(Book book) {
    _books.add(book);
    return _books;
  }

  List<Book> removeBookFromLibrary(Book book) {
    _books.remove(book);
    return _books;
  }

  List<Book> fetchBooks() => _books;

  List<Librarian> fetchLibrarian() => List.from(_librarians);

  List<Reader> fetchReaders() => _readers;
}
