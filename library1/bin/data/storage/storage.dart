import '../../domain/book/Book.dart';
import '../../domain/librarian/librarian.dart';
import '../../domain/reader/reader.dart';

class Storage {
  static const List<Book> _books = [
    Book(10, 'Valera', 'Chronic', 500),
    Book(23, 'Mefody', 'Uchenie', 1000),
    Book(100, 'Noname', 'ZXC', 5000),
    Book(45, 'Vadis', 'Besedka', 1),
    Book(89, 'Tolstoi', 'Voina i mir', 80000),
    Book(100, "Griboedov", 'Gore ot uma', 6000)
  ];
  static const List<Librarian> _librarians = [
    Librarian('Vasya', 1488),
    Librarian('Gena', 228),
    Librarian('Sasha', 1337)
  ];
  static const List<Reader> _readers = [
    Reader('Valeron', 21, 10205220, []),
    Reader('Vadis', 20, 10205221, []),
    Reader('Oleg', 32, 10205222, []),
    Reader('Den', 105, 10205223, [])
  ];

  List<Book> fetchBook() => List.from(_books);

  List<Librarian> fetchLibrarian() => List.from(_librarians);

  List<Reader> fetchReaders() => List.from(_readers);
}
