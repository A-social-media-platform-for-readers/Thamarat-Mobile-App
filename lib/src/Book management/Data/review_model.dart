class Review {
  final int id;
  final String content;
  final DateTime createdTime;
  final int likeCount;
  final int book;
  final int reviewer;

  Review({
    required this.id,
    required this.content,
    required this.createdTime,
    required this.likeCount,
    required this.book,
    required this.reviewer,
  });

  factory Review.fromJson(Map<String, dynamic> json) {
    return Review(
      id: json['id'],
      content: json['content'],
      createdTime: DateTime.parse(json['created_time']),
      likeCount: json['like_count'],
      book: json['book'],
      reviewer: json['reviewer'],
    );
  }
}
