import 'package:flutter/material.dart';
import 'package:faker/faker.dart';
import 'package:untitled/src/core/utils/app_fonts.dart';
import 'package:untitled/src/social%20media/view/screen/ChatList.dart';

// Fake data generation
final faker = Faker();

class SocialMediaScreen extends StatelessWidget {
  const SocialMediaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Post> fakePosts = List.generate(25, (index) => generateFakePost());

    return DefaultTabController(
      length: 2, // Number of tabs including the chat tab
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          title: const Row(
            children: [
              Icon(Icons.menu, color: Colors.black),
              SizedBox(width: 20),
              Text('thamarat',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins')),
              Spacer(),
              Icon(Icons.search, color: Colors.black),
              SizedBox(width: 20),
              SizedBox(width: 20),
              CircleAvatar(
                radius: 19.5,
                backgroundColor: Colors.white,
                child: Icon(Icons.person, size: 30, color: Colors.black),
              )
            ],
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(40.0),
            child: Column(
              children: [
                Divider(
                  color: Colors.grey[600],
                  thickness: 0.5,
                ),
                const TabBar(
                  isScrollable: true,
                  tabAlignment: TabAlignment.center,
                  tabs: [
                    Tab(icon: Icon(Icons.home, color: Colors.blue)),
                    Tab(icon: Icon(Icons.chat, color: Colors.grey)),
                  ],
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            // Screen 1: Home Screen
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                Expanded(
                  child: ListView.builder(
                    itemCount: fakePosts.length,
                    itemBuilder: (context, index) {
                      return PostCard(post: fakePosts[index]);
                    },
                  ),
                ),
              ],
            ),
            // Screen 2: Chat Screen
            ChatList(),
          ],
        ),
      ),
    );
  }
}

Post generateFakePost() {
  return Post(
    id: faker.randomGenerator.integer(1000),
    content: faker.lorem.sentences(5).join(' '),
    image: null,
    video: null,
    createTime: faker.date.dateTime(),
    likeCount: faker.randomGenerator.integer(100),
    youLiked: faker.randomGenerator.boolean(),
    commentCount: faker.randomGenerator.integer(50),
    user: User(
      id: faker.randomGenerator.integer(1000),
      identity: faker.guid.guid(),
      name: faker.person.name(),
      email: faker.internet.email(),
      profileImage: faker.image.image(),
      bio: faker.lorem.sentence(),
    ),
  );
}

class PostCard extends StatelessWidget {
  final Post post;

  PostCard({required this.post});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 13.0),
      child: Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        elevation: 1,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 15,
                    backgroundImage: NetworkImage(post.user.profileImage ??
                        'https://via.placeholder.com/150'),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(post.user.name,
                          style: safeGoogleFont(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              'Poppins')),
                      Text(post.user.bio ?? '',
                          style: TextStyle(
                              fontSize: 8,
                              color: Colors.grey,
                              fontFamily: 'Poppins')),
                    ],
                  ),
                  Spacer(),
                  SizedBox(
                    height: 19,
                    child: MaterialButton(
                      color: Colors.blue,
                      onPressed: () {},
                      child: Text('Follow',
                          style: safeGoogleFont(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              'Poppins',
                              color: Colors.white)),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text(
                post.content,
                maxLines: 4,
                style: safeGoogleFont(
                    fontSize: 10, fontWeight: FontWeight.w600, 'Cairo'),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('${post.likeCount} Like',
                      style: safeGoogleFont(
                          fontSize: 11, fontWeight: FontWeight.w400, 'Inter')),
                  Row(
                    children: [
                      Icon(Icons.comment, size: 24, color: Colors.grey),
                      SizedBox(width: 5),
                      Text('${post.commentCount} Comment',
                          style: safeGoogleFont(
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                              'Inter')),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

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
}

class User {
  final int id;
  final String identity;
  final String name;
  final String email;
  final String? profileImage;
  final String? bio;

  User({
    required this.id,
    required this.identity,
    required this.name,
    required this.email,
    this.profileImage,
    this.bio,
  });
}
