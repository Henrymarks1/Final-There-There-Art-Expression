import 'package:flutter/material.dart';

class Comments extends StatelessWidget {
  const Comments({Key key, @required this.comments}) : super(key: key);
  final List comments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black, //change your color here
          ),
          backgroundColor: new Color(0xfff8faf8),
          centerTitle: true,
          elevation: 1.0,
          title: Text(
            'Comments',
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: Icon(
                Icons.send,
                color: Colors.black,
              ),
            )
          ],
        ),
        body: Column(
          children: List.generate(comments.length, (index) {
            return Column(children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    new Container(
                      // alignment: Alignment.topLeft,
                      height: 40.0,
                      width: 40.0,
                      decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                            fit: BoxFit.fill,
                            image: new NetworkImage(
                                comments[index]["profilePic"])),
                      ),
                    ),
                    new SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                                text: comments[index]["name"],
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black)),
                            TextSpan(text: " "),
                            TextSpan(
                                text: comments[index]["comment"],
                                style: TextStyle(color: Colors.black)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(color: Colors.black26)
            ]);
          }),
        ));
  }
}
