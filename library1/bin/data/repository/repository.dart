import 'dart:core';

import '../../domain/book/Book.dart';
import '../../domain/librarian/librarian.dart';
import '../../domain/reader/reader.dart';

abstract interface class Repository {
  List<Book> getBooks();

  List<Reader> getReaders();

  List<Librarian> getLibrarians();

  void getBookLoan(Book book, int id);

  void returnBookFromLoan(Book book, int id);

  void addBook(Book book);

  void removeBook(Book book);

  List<Book> findBookByAuthor(String author);

  List<Book> findBookByTitle(String title);
}
