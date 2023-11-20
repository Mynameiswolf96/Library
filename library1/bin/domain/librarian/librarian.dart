import '../book/Book.dart';
import '../library/library.dart';

class Librarian {
  final String name;
  final int serviceCardNumber;

  const Librarian(this.name, this.serviceCardNumber);

  @override
  String toString() {
    return 'Name: $name , Service card number:$serviceCardNumber';
  }
}
