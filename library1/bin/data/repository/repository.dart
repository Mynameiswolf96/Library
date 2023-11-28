import 'dart:core';

import '../../domain/book/Book.dart';
import '../../domain/librarian/librarian.dart';
import '../../domain/reader/reader.dart';

abstract interface class Repository {
  List<Book> getBooks();

  List<Reader> getReaders();

  List<Librarian> getLibrarians();

  bool getBookLoan(int readerId, int bookId);

  bool returnBookFromLoan(int readerId, int id);

  void addBook(Book book,int id);

  void removeBook(Book book,int id);

  List<Book> findBooksByAuthor(String author);

  List<Book> findBooksByTitle(String title);
}
