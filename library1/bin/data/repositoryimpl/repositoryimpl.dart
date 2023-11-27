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
  List<Librarian> getLibrarians() => storage.fetchLibrarian();

  @override
  List<Reader> getReaders() => storage.fetchReaders();

  @override
  void getBookLoan(Book book, int id) {
    getReaders().where((reader) => reader.id == id).forEach((reader) {
      reader.books.add(book);
    });
    removeBook(book);
  }

  @override
  void returnBookFromLoan(Book book, int id) {
    getReaders().where((element) => element.id == id).forEach((element) {
      element.books.remove(book);
    });
    addBook(book);
  }

  @override
  List<Book> findBookByAuthor(String author) {
    List<Book> foundBooks =
        getBooks().where((element) => element.author == author).toList();
    return foundBooks;
  }

  @override
  List<Book> findBookByTitle(String title) {
    List<Book> foundBooks =
        getBooks().where((element) => element.title == title).toList();
    return foundBooks;
  }

  @override
  void addBook(Book book) {
    storage.addBookInLibrary(book);
  }

  @override
  void removeBook(Book book) {
    storage.removeBookFromLibrary(book);
  }
}
