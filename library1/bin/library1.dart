import 'package:library1/library1.dart' as library1;

import 'data/repository/repository.dart';
import 'domain/book/Book.dart';
import 'domain/library/library.dart';
import 'domain/reader/reader.dart';

void main(List<String> arguments) {
  Repository repository = Repository();
  print(repository.getBooks());
 repository.readerTakeBook(repository.getReaders().first,repository.getBooks().first,10205220);

}
