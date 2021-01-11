import 'package:flutter/material.dart';
import '../../../constants.dart';

class CategoryList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CategoryListSate();
}

class _CategoryListSate extends State <CategoryList> {
  //default first item will be selected
  int selectedIndex = 0;
  List categories = ["All","Sofa","Park bench","Arm chair","TMT"];
  @override
  Widget build(BuildContext context) => Container(
    margin: EdgeInsets.symmetric(vertical: kDefaultPadding/4),
    height: 30,
    child: ListView.builder(
      itemCount: categories.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(
            left: kDefaultPadding,
            //at end item, it will auto add 20 right padding
            right: index == categories.length -1 ? kDefaultPadding : 0,
          ),
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          decoration: BoxDecoration(
              color: index == selectedIndex ? Colors.white.withOpacity(0.4) : Colors.transparent,
              borderRadius: BorderRadius.circular(30)
          ),
          child: Text(
            categories [index],
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    ),
  );
}