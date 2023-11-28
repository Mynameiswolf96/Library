import 'package:library1/library1.dart' as library1;
import 'data/repository/repository.dart';
import 'data/repositoryimpl/repositoryimpl.dart';
import 'domain/book/Book.dart';

void main(List<String> arguments) {
  Repository getData = RepositoryImpl();

  print(getData.getBooks());
  getData.addBook(Book(23, 'Pelevin', 'Hui', 3123123, 324), 100);
  print(getData.getBooks());
  print(getData.getBookLoan(1, 1));
  print(getData.getReaders().first);
}
