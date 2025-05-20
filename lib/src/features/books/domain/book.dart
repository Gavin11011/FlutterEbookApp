class Book {
  final int id;
  final String title;
  final String description;
  final String author;

  Book({
    required this.id,
    required this.title,
    required this.description,
    required this.author,
  });

  factory Book.fromJson(Map<String, dynamic> json) {
    return Book(
      id: json['id'] as int,
      title: json['title'] as String,
      description: json['description'] as String? ?? '',
      author: json['author'] as String? ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'author': author,
    };
  }
}
