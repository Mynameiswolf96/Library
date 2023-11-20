import 'package:test/test.dart';

import '../../domain/book/Book.dart';
import '../../domain/librarian/librarian.dart';
import '../../domain/reader/reader.dart';
import '../getData/getdata.dart';
import '../storage/storage.dart';

class Repository implements GetData {
  Storage storage = Storage();

  @override
  List<Book> getBooks() => storage.fetchBook();

  @override
  List<Librarian> getLibrarian() => storage.fetchLibrarian();

  @override
  List<Reader> getReaders() => List.from(storage.fetchReaders());

  void readerTakeBook(Reader reader, Book book, int libraryCard) {
    for (int i = 0; i < getReaders().length; i++) {
      if (reader.libraryCard == libraryCard) {
        reader.getBook(book);
        getBooks().remove(book);
      }
    }
  }

  void readerReturnBook(Reader reader, Book book, int libraryCard) {
    for (int i = 0; i < getReaders().length; i++) {
      if (reader.libraryCard == libraryCard) {
        reader.giveAwayBook(book);
        getBooks().add(book);
      }
    }
  }

  List<Book> librarianAddBook(Librarian librarian, Book book) {
    List<Book> books = getBooks();
    books.add(book);
    return books;
  }

  void librarianRemoveBook(Librarian librarian, Book book) {
    getBooks().remove(book);
  }

  Book? searchBookByAuthor(String author) {
    for (int i = 0; getBooks().length > i; i++) {
      if (getBooks()[i].author == author) {
        return getBooks()[i];
      }
    }
    return null;
  }

  Book? searchBookByTitle(String title) {
    for (int i = 0; getBooks().length > i; i++) {
      if (getBooks()[i].title == title) {
        return getBooks()[i];
      }
    }
    return null;
  }
}
