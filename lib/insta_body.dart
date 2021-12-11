import 'package:flutter/material.dart';
import 'package:flutter_insta_clone/character_info.dart';
import 'package:flutter_insta_clone/insta_list.dart';

class InstaBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<CharacterInfo> characterInfo = [
      CharacterInfo(
          name: "edwin_black",
          profilePic:
              "https://healthygut.com/wp-content/uploads/2013/12/how-far-steve-has-come.jpg",
          image:
              "https://scontent-lax3-1.xx.fbcdn.net/v/t31.18172-8/1492223_1462513810690462_3687522676483834244_o.jpg?_nc_cat=109&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=7Zn5h2wuITUAX_wkKo0&_nc_ht=scontent-lax3-1.xx&oh=42d8f5cf115e65da6b36f2d7d4d4ffc7&oe=61D9143C",
          likers: "2 Likes",
          comments: [
            {
              "name": "edwin_black",
              "profilePic":
                  "https://healthygut.com/wp-content/uploads/2013/12/how-far-steve-has-come.jpg",
              "comment": '"obviously I work here now" (Orange 108)',
            },
            {
              "name": "karen",
              "profilePic":
                  "https://media.istockphoto.com/photos/mother-and-son-laughing-in-the-park-picture-id487374270?k=20&m=487374270&s=612x612&w=0&h=w6jJAeH2Lg1E3hzRYX95yDe_59lK7n_4Stzuxl_GZ7c=",
              "comment": "Congrats on the new job 😃❤️❤️❤️❤️"
            }
          ]),
      // CharacterInfo(name: "Orvil Red Feather")
    ];
    return new Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        // Expanded(flex: 1, child: new InstaStories()),
        Flexible(
            child: InstaList(
          chatacterInfo: characterInfo,
        ))
      ],
    );
  }
}
