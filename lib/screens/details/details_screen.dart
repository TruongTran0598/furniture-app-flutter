import 'package:demoonetmt/constants.dart';
import 'package:demoonetmt/models/product.dart';
import 'file:///E:/flutter%20product/demo1/demoonetmt/lib/screens/details/components/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;
  const DetailsScreen({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: buildAppBar(context),
      body: BodyDetails(product: product),
    );
  }

  AppBar buildAppBar (BuildContext context){
    return AppBar(
      elevation: 0,
      backgroundColor: kBackgoundColor,
      leading: IconButton(
        padding: EdgeInsets.only(left: kDefaultPadding),
        icon: SvgPicture.asset("assets/icons/back.svg"),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      //centerTitle: false,
      title: Text(
        "back".toUpperCase(),
        style: Theme.of(context).textTheme.button,
      ),
      actions: <Widget> [
        IconButton(
          padding: EdgeInsets.only(right: kDefaultPadding),
          icon: SvgPicture.asset("assets/icons/cart_with_item.svg"),
          onPressed: (){

          },
        ),
      ],
    );
  }
}