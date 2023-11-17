import '../../data/getData/getdata.dart';
import '../../data/repository/repository.dart';
import '../book/Book.dart';
import '../librarian/librarian.dart';
import '../reader/reader.dart';

class Library implements GetData {
  Repository repository = Repository();

  @override
  List<Book> getBooks() => repository.fetchBooks();

  @override
  List<Reader> getReaders() => repository.fetchReaders();

  @override
  List<Librarian> getLibrarian() => repository.fetchLibrarians();

  void addBook(Book book) {
    repository.fetchBooks().add(book);
  }

  void returnBook(Book book) {
    repository.fetchBooks().remove(book);
  }

  Book? searchBookByTitle(String title) {
    for (int i = 0; repository.fetchBooks().length < i; i++) {
      if (repository.fetchBooks()[i].title == title) {
        return repository.fetchBooks()[i];
      }
    }

    return null;
  }

  Book? searchBookByAuthor(String author) {
    for (int i = 0; repository.fetchBooks().length < i; i++) {
      if (repository.fetchBooks()[i].author == author) {
        return repository.fetchBooks()[i];
      }
    }
    return null;
  }

  @override
  String toString() {
    return 'Информация о всех книгах, которые хранятся в библиотеке ${repository.fetchBooks()}';
  }

  void readerTakeBook(Reader reader, Book book, int libraryCard) {
    if (reader.libraryCard == libraryCard) {
      reader.getBook(book);
    }
  }

  void readerReturnBook(Reader reader, Book book, int libraryCard) {
    if (reader.libraryCard == libraryCard) {
      reader.giveAwayBook(book);
    }
  }

  void librarianAddBookInLibrary(Book book, Librarian librarian) {
    repository.fetchBooks().add(book);
  }

  void librarianDeleteBookFromLibrary(Book book, Librarian librarian) {
    repository.fetchBooks().remove(book);
  }
}
