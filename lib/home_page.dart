import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> profileImage = [
    "Images/1.jpeg",
    "Images/2.jpeg",
    "Images/3.jpeg",
    "Images/4.jpeg",
    "Images/5.jpeg",
    "Images/6.jpeg",
    "Images/7.png",
    "Images/8.jpeg"
  ];
  List<String> post = [
    "Images/post1.jpeg",
    "Images/post2.jpeg",
    "Images/post3.jpeg",
    "Images/post4.jpeg",
    "Images/post5.jpeg",
    "Images/post6.jpeg",
    "Images/post7.jpeg",
    "Images/post8.jpeg"
  ];
  Future<void> onRefresh() async {
    await Future.delayed(Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "Images/logo.png",
          height: 50,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add_circle_outline),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite_border),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.chat_bubble_outline),
          )
        ],
      ),
      body: RefreshIndicator(
        onRefresh: onRefresh,
        child: SingleChildScrollView(
          child: Column(
            children: [
              // STORY
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    8,
                    (index) => Container(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 35,
                            backgroundImage: AssetImage(
                              "Images/story.png",
                            ),
                            child: CircleAvatar(
                              radius: 32,
                              backgroundImage: AssetImage(
                                profileImage[index],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Profile Name",
                            style:
                                TextStyle(fontSize: 12, color: Colors.black87),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Divider(),
              Column(
                children: List.generate(
                  8,
                  (index) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // HEADER POST
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            child: CircleAvatar(
                              radius: 14,
                              backgroundImage: AssetImage(
                                "Images/story.png",
                              ),
                              child: CircleAvatar(
                                radius: 12,
                                backgroundImage: AssetImage(
                                  profileImage[index],
                                ),
                              ),
                            ),
                          ),
                          Text('Profile Name'),
                          Spacer(),
                          IconButton(
                              onPressed: () {}, icon: Icon(Icons.more_vert))
                        ],
                      ),
                      // IMAGE POST
                      Image.asset(post[index]),
                      // FOOTER POST
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.favorite_border),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(FontAwesomeIcons.comment),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              FontAwesomeIcons.paperPlane,
                            ),
                          ),
                          Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(FontAwesomeIcons.bookmark),
                          )
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                style: TextStyle(color: Colors.black),
                                children: [
                                  TextSpan(text: "Liked by"),
                                  TextSpan(
                                    text: " Profile Name",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(text: ' and'),
                                  TextSpan(
                                    text: ' others',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                style: TextStyle(color: Colors.black),
                                children: [
                                  TextSpan(
                                    text: 'Profile Name',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(
                                    text:
                                        'Learning new things and making hand dirty on Flutter UI',
                                  )
                                ],
                              ),
                            ),
                            Text(
                              'View all 12 comments',
                              style: TextStyle(color: Colors.black38),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
