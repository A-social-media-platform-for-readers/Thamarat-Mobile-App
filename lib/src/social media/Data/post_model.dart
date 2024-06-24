import 'package:untitled/src/authentication/Data/user_mode.dart';

class Post {
  final int id;
  final String content;
  final String? image;
  final String? video;
  final DateTime createTime;
  final int likeCount;
  final bool youLiked;
  final int commentCount;
  final User user;

  Post({
    required this.id,
    required this.content,
    this.image,
    this.video,
    required this.createTime,
    required this.likeCount,
    required this.youLiked,
    required this.commentCount,
    required this.user,
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      id: json['id'],
      content: json['content'],
      image: json['image'],
      video: json['video'],
      createTime: DateTime.parse(json['create_time']),
      likeCount: json['like_count'],
      youLiked: json['you_liked'],
      commentCount: json['comment_count'],
      user: User.fromJson(json['user']),
    );
  }
}
