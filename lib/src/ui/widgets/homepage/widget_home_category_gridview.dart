import 'package:edu_life/src/ui/widgets/homepage/widget_home_category_item.dart';
import 'package:flutter/material.dart';

class HomepageCategoryGridView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeCatGridState();
}

class _HomeCatGridState extends State<HomepageCategoryGridView> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      crossAxisCount: 2,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      childAspectRatio: 200 / 300,
      padding: EdgeInsets.all(20),
      children: List.generate(10, (index) {
        return HomeCategoryItemWidget(
            caption: "Kategori $index",
            image: AssetImage("assets/images/bottom_img_2.png"));
      }),
    );
  }
}