class Book {
  final int id;
  final String? title;
  final String? author;
  final double? rate;
  final int? price;
  final String? genre;
  final String? publisher;
  final String? publicationDate;
  final String? description;
  final int? reviewsCount;
  final int? readersCount;
  final int? readingCount;
  final int? toReadCount;
  final String? coverImage;
  final String? pdfFile;

  Book({
    required this.id,
    this.title,
    this.author,
    this.rate,
    this.price,
    this.genre,
    this.publisher,
    this.publicationDate,
    this.description,
    this.reviewsCount,
    this.readersCount,
    this.readingCount,
    this.toReadCount,
    this.coverImage,
    this.pdfFile,
  });

  factory Book.fromJson(Map<String, dynamic> json) {
    return Book(
      id: json['id'] ?? 0,
      title: json['title'] as String?,
      author: json['author'] as String?,
      rate: (json['rate'] as num?)?.toDouble(),
      price: json['price'] as int?,
      genre: json['genre'] as String?,
      publisher: json['publisher'] as String?,
      publicationDate: json['publication_date'] as String?,
      description: json['description'] as String?,
      reviewsCount: json['reviews_count'] as int?,
      readersCount: json['readers_count'] as int?,
      readingCount: json['reading_count'] as int?,
      toReadCount: json['to_read_count'] as int?,
      coverImage: json['cover_image'] as String?,
      pdfFile: json['pdf_file'] as String?,
    );
  }
}
