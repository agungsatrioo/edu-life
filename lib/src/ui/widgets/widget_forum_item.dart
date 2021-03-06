import 'package:flutter/material.dart';

import '../../constants/constant_main.dart';

class ForumItemWidget extends StatelessWidget {
  const ForumItemWidget({
    Key key,
    this.onClicked,
    this.title,
    this.username,
  }) : super(key: key);

  final Function onClicked;
  final String title, username;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClicked,
      child: Container(
        padding: EdgeInsets.all(15),
        margin: const EdgeInsets.only(left: 30, top: 15, right: 30),
        decoration: BoxDecoration(
            color: colorSmallComponent,
            borderRadius: BorderRadius.circular(20),
            boxShadow: darkShadow),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 20),
            CircleAvatar(),
            SizedBox(width: 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Text(
                    "oleh: $username",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                  )
                ],
              ),
            ),
            GestureDetector(
              child: Icon(Icons.more_vert),
            )
          ],
        ),
      ),
    );
  }
}
