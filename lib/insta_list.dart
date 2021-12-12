import 'package:flutter/material.dart';
import 'package:therestagram/comments.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:therestagram/insta_stories.dart';

import 'character_info.dart';

class InstaList extends StatefulWidget {
  InstaList({Key key, @required this.chatacterInfo}) : super(key: key);
  List<CharacterInfo> chatacterInfo;
  @override
  _InstaListState createState() => _InstaListState();
}

class _InstaListState extends State<InstaList> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.chatacterInfo.length,
      itemBuilder: (context, index) =>
          // index == 0
          //     ? new SizedBox(
          //         child: new InstaStories(),
          //         height: deviceSize.height * 0.15,
          //       )
          //     :
          Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 16.0, 8.0, 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    new Container(
                      height: 40.0,
                      width: 40.0,
                      decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                            fit: BoxFit.fill,
                            image: new NetworkImage(
                                widget.chatacterInfo[index].profilePic)),
                      ),
                    ),
                    new SizedBox(
                      width: 10.0,
                    ),
                    new Text(
                      widget.chatacterInfo[index].name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                new IconButton(
                  icon: Icon(Icons.more_vert),
                  onPressed: null,
                )
              ],
            ),
          ),
          Flexible(
            fit: FlexFit.loose,
            child: widget.chatacterInfo[index].image.substring(0, 1) == "h"
                ? Image.network(
                    widget.chatacterInfo[index].image,
                    fit: BoxFit.cover,
                  )
                : Image.asset(widget.chatacterInfo[index].image),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 16.0, right: 16, left: 16, bottom: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(FontAwesomeIcons.heart),
                    new SizedBox(
                      width: 10,
                    ),
                    new Icon(
                      FontAwesomeIcons.comment,
                    ),
                    new SizedBox(
                      width: 10,
                    ),
                    new Icon(FontAwesomeIcons.paperPlane),
                  ],
                ),
                new Icon(FontAwesomeIcons.bookmark)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              widget.chatacterInfo[index].likers,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Comments(
                          comments: widget.chatacterInfo[index].comments)),
                );
              },
              child: Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 5, 0.0, 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                                text: widget.chatacterInfo[index].name,
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black)),
                            TextSpan(text: " "),
                            TextSpan(
                                text: widget.chatacterInfo[index].comments[0]
                                    ["comment"],
                                style: TextStyle(color: Colors.black)),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "View all ${widget.chatacterInfo[index].comments.length} comments",
                        style: TextStyle(color: Colors.grey[500]),
                      )
                    ],
                  ))),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text("1 Day Ago", style: TextStyle(color: Colors.grey)),
          )
        ],
      ),
    );
  }
}
