class Book {
  final String title;
  final String author;
  final int pages;
  final int age;

  const Book(this.age, this.author, this.title, this.pages);

  @override
  String toString() {
    return 'Age : $age , Author: $author ,Title: $title ,Pages: $pages';
  }
}
