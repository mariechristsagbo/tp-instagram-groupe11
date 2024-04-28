import 'package:flutter/material.dart';

class HomePageInstagram extends StatelessWidget {
  List<Map<String, String>> stories = [
    {"image": "assets/images/your_story.jpeg", "username": "My Story"},
    {"image": "assets/images/story1.png", "username": "rynbtc"},
    {"image": "assets/images/story2.png", "username": "codelabs"},
    {"image": "assets/images/story3.png", "username": "lux.code"},
    {"image": "assets/images/story4.png", "username": "bastien"},
    {"image": "assets/images/story5.png", "username": "mc.sagbo"},
    {"image": "assets/images/story6.jpg", "username": "cristiano"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: IconButton(
          icon: Image.asset(
            "assets/images/ic_instagram.png",
            width: 120,
            height: 120,
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Image.asset(
              "assets/icons/favorite.png",
              width: 25,
              height: 25,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Image.asset(
              "assets/icons/messenger.png",
              width: 25,
              height: 25,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 10),
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: stories.length,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            CircleAvatar(
                              radius: 40,
                              backgroundImage: AssetImage(stories[index]["image"]!),
                            ),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: Container(
                                padding: EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 4),
                        Flexible(
                          child: Text(
                            stories[index]["username"]!,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                } else {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage(stories[index]["image"]!),
                        ),
                        SizedBox(height: 4),
                        Flexible(
                          child: Text(
                            stories[index]["username"]!,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }
              },
            ),
          ),
          SizedBox(height: 10,),
          // Construction de la publication
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20, top:12,),
                    child: CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage('assets/images/story3.png'),
                    ),
                  ),
                  SizedBox(width: 8),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top:8.0),
                      child: Text(
                        "codelabs",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  IconButton(
                    icon: Icon(Icons.more_vert),
                    onPressed: () {},
                  ),
                ],
              ),
              SizedBox(height: 20),
              Image.asset('assets/images/pub.jpg'),
              SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20, top:8,),
                    child: Icon(Icons.favorite_border, size: 30),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, top: 12),
                    child: Image.asset(
                      'assets/icons/chat.png',
                      width: 30,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, top: 12),
                    child: Image.asset(
                      'assets/icons/send.png',
                      width: 25,
                    ),
                  ),

                  Spacer(),
                  GestureDetector(
                    onTap: () {

                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Image.asset(
                        'assets/icons/save.png',
                        width: 25,
                        height: 25,
                      ),
                    ),
                  ),

                ],
              ),
            ],
          ),
        ],
      ),

      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.home_filled, size: 30),
            Icon(Icons.search, size: 30),
            Icon(Icons.add_box_outlined, size: 30),
            Icon(Icons.favorite_border, size: 30),
            Icon(Icons.account_circle, size: 30),
          ],
        ),
      ),
    );
  }
}