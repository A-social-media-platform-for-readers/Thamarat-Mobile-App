import 'package:untitled/src/social%20media/Data/user_model2.dart';

class Post {
  final int id;
  final String content;
  final User2 user;
  final int likeCount;
  final int commentCount;

  Post({
    required this.id,
    required this.content,
    required this.user,
    required this.likeCount,
    required this.commentCount,
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      id: json['id'],
      content: json['content'] ?? '', // Handle null case with default value
      user: User2.fromJson(
          json['user']), // Assuming user data is parsed correctly
      likeCount: json['like_count'],
      commentCount: json['comment_count'],
    );
  }
}
