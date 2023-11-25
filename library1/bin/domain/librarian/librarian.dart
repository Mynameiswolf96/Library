

class Librarian {
  final String name;
  final int serviceCardNumber;
  final int id;

  const Librarian(this.name, this.serviceCardNumber, this.id);

  @override
  String toString() {
    return 'Name: $name , Service card number:$serviceCardNumber';
  }
}
