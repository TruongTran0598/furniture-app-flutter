import 'package:demoonetmt/models/product.dart';
import 'package:demoonetmt/screens/details/details_screen.dart';
import 'package:demoonetmt/screens/product/components/product_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../components/search_box.dart';
import '../../../constants.dart';
import 'category_list.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: <Widget> [
          SearchBox(onChanged: (value) {

          },),
          CategoryList(),
          SizedBox(height: kDefaultPadding / 2 ),
          Expanded(
            child: Stack(
              children: <Widget> [
                Container(
                  margin: EdgeInsets.only(top: 70),
                  decoration: BoxDecoration(
                      color: kBackgoundColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60),
                      )
                  ),
                ),
                ListView.builder(
                  //here we use our demo products list
                  itemCount: products.length,
                  itemBuilder: (context, index) => ProductCard(
                    itemIndex: index,
                    product: products[index],
                    press: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsScreen(product: products[index],),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

