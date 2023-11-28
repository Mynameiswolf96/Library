import 'package:test/test.dart';

import '../../domain/book/Book.dart';
import '../../domain/librarian/librarian.dart';
import '../../domain/reader/reader.dart';
import '../repository/repository.dart';
import '../storage/storage.dart';

class RepositoryImpl implements Repository {
  Storage storage = Storage();

  @override
  List<Book> getBooks() => storage.fetchBooks();

  @override
  List<Librarian> getLibrarians() => storage.fetchLibrarians();

  @override
  List<Reader> getReaders() => storage.fetchReaders();

  @override
  bool getBookLoan(int readerId, int bookId) {
    try {
      final reader = getReaders().firstWhere((reader) => reader.id == readerId);
      final book = getBooks().firstWhere((book) => book.id == bookId);
      reader.books.add(book);
      storage.removeBookFromLibrary(book);
      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  bool returnBookFromLoan(int readerId, int bookId) {
    try {
      final reader = getReaders().firstWhere((reader) => reader.id == readerId);
      final book = getBooks().firstWhere((book) => book.id == bookId);
      reader.books.remove(book);
      storage.addBookInLibrary(book);
      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  List<Book> findBooksByAuthor(String author) {
    List<Book> foundBooks =
        getBooks().where((element) => element.author == author).toList();
    return foundBooks;
  }

  @override
  List<Book> findBooksByTitle(String title) {
    List<Book> foundBooks =
        getBooks().where((element) => element.title == title).toList();
    return foundBooks;
  }

  @override
  void addBook(Book book, int librarianId) {
    getLibrarians().forEach((librarian) {
      if (librarian.id == librarianId) {
        storage.addBookInLibrary(book);
      }
    });
  }

  @override
  void removeBook(Book book, int id) {
    getLibrarians().forEach((librarian) {
      if (librarian.id == id) {
        storage.removeBookFromLibrary(book);
      }
    });
  }
}
