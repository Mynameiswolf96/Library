import '../../domain/book/Book.dart';
import '../../domain/librarian/librarian.dart';
import '../../domain/reader/reader.dart';

abstract interface class GetData {
  List<Book> getBooks();

  List<Reader> getReaders();

  List<Librarian> getLibrarian();
}
