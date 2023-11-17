import '../../data/getData/getdata.dart';
import '../../data/repository/repository.dart';
import '../book/Book.dart';
import '../librarian/librarian.dart';
import '../reader/reader.dart';

class Library implements GetData {
  final List<Book> books;
  final List<Librarian> librarian;
  final List<Reader> reader;

  static Library? _instance;

  Library._(this.books, this.librarian, this.reader);

  static Library getInstance(
      List<Book> books, List<Reader> readers, List<Librarian> librarians) {
    _instance ??= Library._(books, librarians, readers);
    return _instance!;
  }
  Repository repository = Repository();

  @override
  List<Book> getBooks() => repository.fetchBooks();

  @override
  List<Reader> getReaders() => repository.fetchReaders();

  @override
  List<Librarian> getLibrarian() => repository.fetchLibrarians();

  void addBook(Book book) {
    books.add(book);
  }

  void returnBook(Book book) {
    books.remove(book);
  }

  Book? searchBookByTitle(String title) {
    for (int i = 0; books.length < i; i++) {
      if (books[i].title == title) {
        return books[i];
      }
    }

    return null;
  }

  Book? searchBookByAuthor(String author) {
    for (int i = 0; books.length < i; i++) {
      if (books[i].author == author) {
        return books[i];
      }
    }
    return null;
  }
  @override
  String toString() {
    return 'Информация о всех книгах, которые хранятся в библиотеке $books';
  }
  void readerTakeBook(Reader reader, Book book,int libraryCard){
    if(reader.libraryCard==libraryCard){
      reader.getBook(book);
    }
  }
  void readerReturnBook(Reader reader, Book book, int libraryCard){
    if(reader.libraryCard==libraryCard){
      reader.giveAwayBook(book);
    }
  }
  void librarianAddBookInLibrary(Book book, Librarian librarian){
    books.add(book);
  }
  void librarianDeleteBookFromLibrary(Book book, Librarian librarian){
    books.remove(book);
  }
}
