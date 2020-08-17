import 'package:edu_life/config/constants.dart';
import 'package:flutter/material.dart';

class MoreOfSubMenu extends StatelessWidget {
  const MoreOfSubMenu({
    Key key,
    this.subtitle,
    this.onHitMore,
  }) : super(key: key);

  final String subtitle;
  final Function onHitMore;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Row(
        children: <Widget>[
          Container(
            height: 24,
            child: Text(
              subtitle,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Spacer(),
          FlatButton(
            color: colorPrimary,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            onPressed: onHitMore,
            child: Text(
              "See more",
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
