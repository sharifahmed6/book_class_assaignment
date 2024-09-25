void main(){
  // Creating Book Object
  Book book1= Book(title: 'Nineteen Eighty-Four is a hopeful vision of the future.', author: 'Winston', publicationYear: 1984, pagesRead: 0);
  Book book2= Book(title: 'Greta Garbo in Anna Karenina', author: 'Anna Karenina', publicationYear: 1935, pagesRead: 0);
  Book book3= Book(title: 'To Kill a Mockingbird', author: 'Harper Lee', publicationYear: 1960, pagesRead: 0);
// Simulate reading pages
  book1.read(4);
  book2.read(7);
  book3.read(15);
// Book details for each
  print('Book1 Title: ${book1.getTitle()}, by Author: ${book1.getAuthor()}, Published: ${book1.getPublicationYear()}, Page Read ${book1.pagesRead}, Book age ${book1.getBookAge()} Years');
  print('Book2 Title: ${book2.getTitle()}, by Author: ${book2.getAuthor()}, Published: ${book2.getPublicationYear()}, Page Read ${book2.pagesRead}, Book age ${book2.getBookAge()} Years');
  print('Book3 Title: ${book3.getTitle()}, by Author: ${book3.getAuthor()}, Published: ${book3.getPublicationYear()}, Page Read ${book3.pagesRead}, Book age ${book3.getBookAge()} Years');
// Total Number Of Books
  print(Book.totalBooks);
}

class Book{
// Properties
  String title;
  String author;
  int publicationYear;
  int pagesRead;

// Static property
  static  int totalBooks=0;

// Constructor Object
  Book({required this.title,required this.author,required this.publicationYear,required this.pagesRead}){
    totalBooks++;
  }
// Class Method
//   Simulate Reading Pages
  void read(int pages){
    pagesRead += pages;

  }
  int getPagesRead(){
    return pagesRead;
  }
  String getTitle(){
    return title;
  }
  String getAuthor(){
    return author;
  }
  int getPublicationYear(){
    return publicationYear;
  }
// Calculate Book Age
  int getBookAge(){
    return DateTime.now().year - getPublicationYear();
  }


}

