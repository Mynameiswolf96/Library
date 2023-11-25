import 'package:test/test.dart';

import '../../domain/book/Book.dart';
import '../../domain/librarian/librarian.dart';
import '../../domain/reader/reader.dart';
import '../getData/getdata.dart';
import '../storage/storage.dart';

class Repository implements GetData {
  Storage storage = Storage();

  @override
  List<Book> getBooks() => storage.fetchBooks();

  @override
  List<Librarian> getLibrarian() => storage.fetchLibrarian();

  @override
  List<Reader> getReaders() => List.from(storage.fetchReaders());

  @override
  List<Book>? getBook(Book book, int id) {
    for (int i = 0; i < getReaders().length; i++) {
      if (getReaders()[i].id == id) {
        getReaders()[i].books.add(book);
        return getReaders()[i].books;
      }
    }
    return null;
  }

  @override
  List<Book>? returnBook(Book book, int id) {
    for (int i = 0; i < getReaders().length; i++) {
      if (getReaders()[i].id == id) {
        getReaders()[i].books.remove(book);
        return getReaders()[i].books;
      }
    }
    return null;
  }

  @override
  Book? findBookByAuthor(String author) {
    for (int i = 0; i < getBooks().length; i++) {
      if (getBooks()[i].author == author) {
        return getBooks()[i];
      }
    }
    return null;
  }

  @override
  Book? findBookByTitle(String title) {
    for (int i = 0; i < getBooks().length; i++) {
      if (getBooks()[i].title == title) {
        return getBooks()[i];
      }
    }
    return null;
  }

  @override
  List<Book> addBookInLibrary(Book book) {
    storage.addBookInLibrary(book);
    return getBooks();
  }

  @override
  List<Book> removeBookFromLibrary(Book book) {
    storage.removeBookFromLibrary(book);
    return getBooks();
  }

  @override
  List<Book> addBookByLibrarian(Book book, int id) {
    for (int i = 0; i < getLibrarian().length; i++) {
      if (getLibrarian()[i].id == id) {
        storage.fetchBooks().add(book);
        return getBooks();
      }
    }
    return getBooks();
  }

  @override
  List<Book> removeBookByLibrarian(Book book, int id) {
    for (int i = 0; i < getLibrarian().length; i++) {
      if (getLibrarian()[i].id == id) {
        storage.fetchBooks().remove(book);
        return getBooks();
      }
    }
    return getBooks();
  }
}
