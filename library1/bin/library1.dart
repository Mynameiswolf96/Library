import 'package:library1/library1.dart' as library1;

import 'data/creator/repository.dart';
import 'data/repository/repository.dart';
import 'domain/book/Book.dart';
import 'domain/library/library.dart';
import 'domain/reader/reader.dart';

void main(List<String> arguments) {
  Repository repository=Repository();
   Library library=Library(repository.fetchBooks());



}
