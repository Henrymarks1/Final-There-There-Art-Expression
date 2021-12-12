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
          likers: "3 Likes",
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
      CharacterInfo(
          name: "orvil_red_feather49",
          profilePic:
              "https://media.gettyimages.com/photos/three-teenage-boys-on-lowrider-bicycles-with-murals-on-wall-picture-id200568351-001?s=2048x2048",
          image:
              "https://www.cbc.ca/kidscbc2/content/the_feed/powwow_drumcirlce-compressor.jpg",
          likers: "Liked by opalbearsheild, lony, and 6 others",
          comments: [
            {
              "name": "opalbearsheild",
              "profilePic":
                  "https://dornsife.usc.edu/assets/img/news/story/2836.jpg",
              "comment": 'So proud of you',
            },
            {
              "name": "loother",
              "profilePic":
                  "https://subwaynut.com/california/bart/coliseum/coliseum15.jpg",
              "comment": "bro Earl Sweatshirt is WAY better than this shit"
            }
          ]),
      CharacterInfo(
          name: "DeneOxendene",
          profilePic:
              "https://ipt.imgix.net/206729/x/0/beginner-s-guide-to-types-of-cameras-for-digital-photography-3.jpg?auto=compress%2Cformat&ch=Width%2CDPR&dpr=1&ixlib=php-3.3.0&w=883",
          image: "assets/images/dene.png",
          likers: "Liked by CalvinJ, orvil_red_feather49, and 24 others",
          comments: [
            {
              "name": "DeneOxendene",
              "profilePic":
                  "https://ipt.imgix.net/206729/x/0/beginner-s-guide-to-types-of-cameras-for-digital-photography-3.jpg?auto=compress%2Cformat&ch=Width%2CDPR&dpr=1&ixlib=php-3.3.0&w=883",
              "comment": 'PLZ guys hit me up I will pay with grant money',
            },
            {
              "name": "CalvinJ",
              "profilePic":
                  "https://scontent-lax3-2.xx.fbcdn.net/v/t1.6435-9/31739905_2061371083892021_7673197384859385856_n.jpg?_nc_cat=107&ccb=1-5&_nc_sid=8bfeb9&_nc_ohc=83vTzIg66TgAX9v9TrR&_nc_ht=scontent-lax3-2.xx&oh=c53e782f3e5e119b9db24cd959682196&oe=61DC4BCA",
              "comment":
                  '''Blue convinced me to do this, "I'm native (but) Mostly I just feel like I’m from Oakland." (Orange 109)'''
            },
            {
              "name": "orvil_red_feather49",
              "profilePic":
                  "https://media.gettyimages.com/photos/three-teenage-boys-on-lowrider-bicycles-with-murals-on-wall-picture-id200568351-001?s=2048x2048",
              "comment": "this is cool, can you interview me too"
            }
          ])
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
