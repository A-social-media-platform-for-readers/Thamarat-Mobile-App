import 'package:flutter/material.dart';

class SocialMediaScreen extends StatelessWidget {
  const SocialMediaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs
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
              Icon(Icons.notifications, color: Colors.black),
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
                  tabs: [
                    Tab(icon: Icon(Icons.home, color: Colors.blue)),
                    Tab(icon: Icon(Icons.search, color: Colors.grey)),
                  ],
                ),
              ],
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            const Row(
              children: [
                StoryItem(name: "You", imagePath: "assets/aatar.svg"),
                StoryItem(name: "Ahmed", imagePath: "assets/aatar-2.svg"),
                StoryItem(name: "mohamed", imagePath: "assets/aatar-3.svg"),
                StoryItem(name: "Mostafa", imagePath: "assets/aatar-4.svg"),
              ],
            ),
            const SizedBox(height: 20),
            PostCard(),
            PostCard(),
          ],
        ),
      ),
    );
  }
}

class StoryItem extends StatelessWidget {
  final String name;
  final String imagePath;

  const StoryItem({super.key, required this.name, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 35,
            backgroundImage: AssetImage(imagePath),
          ),
          Text(name,
              style: TextStyle(
                  color: Colors.black, fontSize: 13, fontFamily: 'Poppins'))
        ],
      ),
    );
  }
}

class PostCard extends StatelessWidget {
  PostCard();

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
                    backgroundImage: AssetImage("assets/man.png"),
                  ),
                  SizedBox(width: 10),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('mohamed Elwaly',
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins')),
                      Text('Reader and Author',
                          style: TextStyle(
                              fontSize: 8,
                              color: Colors.grey,
                              fontFamily: 'Poppins')),
                    ],
                  ),
                  const Spacer(),
                  SizedBox(
                    height: 19,
                    child: MaterialButton(
                      color: Colors.blue,
                      onPressed: () {},
                      child: const Text('Follow',
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Poppins',
                              color: Colors.white)),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Text(
                  'تعتبر القراءة من أهمّ المهارات المكتسبة التي تحقق النجاح والمتعة لكل فرد خلال حياته، وذلك انطلاقاً من...'
                  ' أن القراءة هي الجزء المكمل للحياة الشخصية والعملية وهي مفتاح أبواب العلوم والمعارف المتنوعة. مهارة '
                  'القراءة لا يكفي بذكاء الطالب، بل يهتمّ بوجود العوامل الخارجية والداخلية المشجّعة على القراءة.',
                  maxLines: 4,
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Cairo')),
              const SizedBox(height: 10),
              Image.asset("assets/post-image.png"),
              const SizedBox(height: 10),
              const Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text('50 Like',
                    style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Inter')),
                Row(
                  children: [
                    Icon(Icons.comment, size: 24, color: Colors.grey),
                    SizedBox(width: 5),
                    Text('10 Comment',
                        style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Inter')),
                  ],
                )
              ])
            ],
          ),
        ),
      ),
    );
  }
}
