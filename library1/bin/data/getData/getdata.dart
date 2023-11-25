import 'dart:core';

import '../../domain/book/Book.dart';
import '../../domain/librarian/librarian.dart';
import '../../domain/reader/reader.dart';

abstract interface class GetData {
  List<Book> getBooks();

  List<Reader> getReaders();

  List<Librarian> getLibrarian();

  List<Book>? getBook(Book book, int id);

  List<Book>? returnBook(Book book, int id);

  List<Book> addBookInLibrary(Book book);

  List<Book> removeBookFromLibrary(Book book);

  Book? findBookByAuthor(String author);

  Book? findBookByTitle(String title);

  List<Book> removeBookByLibrarian(Book book, int id);

  List<Book> addBookByLibrarian(Book book, int id);
}
