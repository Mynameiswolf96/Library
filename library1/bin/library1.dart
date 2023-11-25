import 'package:library1/library1.dart' as library1;

import 'data/getData/getdata.dart';
import 'data/repository/repository.dart';
import 'domain/book/Book.dart';

void main(List<String> arguments) {
  GetData getData = Repository();

  print(getData.getBooks());
  print(getData.addBookInLibrary(Book(23, 'Pelevin', 'Hui', 3123123, 324)));
  print(getData.getBooks());
  print(getData.removeBookFromLibrary(getData.getBooks().first));
  print(getData.getBooks());
  getData.getBook(getData.getBooks().first, 100);
  print(getData.getReaders().first);
  getData.returnBook(getData.getReaders().first.books.first, 100);
  print(getData.getReaders().first);
  getData.addBookByLibrarian(getData.getBooks().first, 10);
  print(getData.getBooks());
  print(getData.findBookByAuthor('Mefody'));
  print(getData.findBookByTitle('Gore ot um'));
}
