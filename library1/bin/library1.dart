import 'package:library1/library1.dart' as library1;
import 'data/repository/repository.dart';
import 'data/repositoryimpl/repositoryimpl.dart';
import 'domain/book/Book.dart';

void main(List<String> arguments) {
  Repository getData = RepositoryImpl();

  print(getData.getBooks());
  (getData.addBook(Book(23, 'Pelevin', 'Hui', 3123123, 324)));
  print(getData.getBooks());
  (getData.removeBook(getData.getBooks().first));
  print(getData.getBooks());
  getData.getBookLoan(getData.getBooks().first, 100);
  print(getData.getReaders().first);
  getData.returnBookFromLoan(getData.getReaders().first.books.first, 100);
  print(getData.getReaders().first);
  (getData.addBook(Book(23, 'Ez', 'Hui', 3123123, 324)));
  print(getData.getBooks());
  print(getData.findBookByAuthor('Mefody'));
  print(getData.findBookByTitle('Gore ot um'));
  getData.getBookLoan(getData.getBooks().first, 112);
  print(getData.getReaders().first);
}
