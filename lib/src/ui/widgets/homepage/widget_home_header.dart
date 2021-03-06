import 'package:flutter/material.dart';

import '../../../constants/constant_main.dart';

class HomeHeaderWidget extends StatelessWidget {
  const HomeHeaderWidget({
    Key key,
    this.search,
    this.title,
    this.subtitle,
  }) : super(key: key);

  final Widget search;
  final String title, subtitle;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.only(bottom: 50),
      height: title == "Forum" ? size.height * 0.3 : size.height * 0.35,
      child: Stack(
        children: <Widget>[
          Container(
            height: title == "Forum"
                ? size.height * 0.3 - 27
                : size.height * 0.35 - 27,
            decoration: BoxDecoration(
                color: colorPrimary,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
            child: Container(
              margin: EdgeInsets.only(left: 20),
              child: Row(
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
              bottom: title == "Forum" ? size.height * 0.1 : size.height * 0.14,
              left: 20,
              child: Container(
                child: Text(
                  subtitle,
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              )),
          search
        ],
      ),
    );
  }
}
