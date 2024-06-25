import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled/src/core/utils/app_colors.dart';
import 'package:untitled/src/core/utils/app_fonts.dart';
import 'package:untitled/src/core/utils/assets.dart';
import 'package:untitled/src/social%20media/Data/post_service.dart';
import 'package:untitled/src/social%20media/view/screen/ChatList.dart';
import 'package:untitled/src/social%20media/Data/post_model.dart';

class SocialMediaScreen extends StatefulWidget {
  const SocialMediaScreen({Key? key}) : super(key: key);

  @override
  _SocialMediaScreenState createState() => _SocialMediaScreenState();
}

class _SocialMediaScreenState extends State<SocialMediaScreen> {
  final PostService _postService = PostService();
  List<Post> posts = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    _fetchPosts();
  }

  Future<void> _fetchPosts() async {
    final fetchedPosts = await _postService.fetchPosts(1);
    setState(() {
      posts = fetchedPosts;
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs including the chat tab
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              SizedBox(
                width: 31.w,
              ),
              Expanded(
                child: IconButton(
                  icon: SizedBox(
                    width: 24.w,
                    height: 24.h,
                    child: SvgPicture.asset(AssetsData.homeList),
                  ),
                  onPressed: () {},
                ),
              ),
              const SizedBox(
                width: 13,
              ),
              Expanded(
                child: SizedBox(
                  width: 73.w,
                  height: 23.h,
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      'thamarat',
                      style: safeGoogleFont(
                        'Poppins',
                        color: Colors.black,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 144,
              ),
              Expanded(
                flex: 1,
                child: Container(
                  width: 39.w,
                  height: 39.h,
                  margin: EdgeInsetsDirectional.only(end: 36.0.w),
                  decoration: ShapeDecoration(
                    color: AppColors.primary,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 0),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: IconButton(
                    icon: SizedBox(
                      width: 24.w,
                      height: 24.h,
                      child: Image.asset('assets/Media.png'),
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
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
            isLoading
                ? Center(child: CircularProgressIndicator())
                : ListView.builder(
                    itemCount: posts.length,
                    itemBuilder: (context, index) {
                      return PostCard(post: posts[index]);
                    },
                  ),
            // Screen 2: Chat Screen
            ChatList(),
          ],
        ),
      ),
    );
  }
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
                    backgroundImage: post.user.profileImage != null
                        ? NetworkImage(post.user.profileImage!)
                        : AssetImage(AssetsData.testImage)
                            as ImageProvider, // Explicit cast
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
                          style: safeGoogleFont(
                              fontSize: 8, color: Colors.grey, 'Poppins')),
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
                      const Icon(Icons.comment, size: 24, color: Colors.grey),
                      const SizedBox(width: 5),
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
