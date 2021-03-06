import 'package:edu_life/src/constants/constant_main.dart';
import 'package:flutter/material.dart';

class HomeCardImageWidget extends StatelessWidget {
  const HomeCardImageWidget({
    Key key,
    @required this.img,
    this.category, this.onClicked,
  }) : super(key: key);

  final String img, category;
  final Function onClicked;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onClicked,
      child: Container(
        width: size.width * 0.4,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(boxShadow: darkShadow),
        child: Stack(
          children: <Widget>[
            Image.asset(img),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 15),
              child: Text(
                category,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
