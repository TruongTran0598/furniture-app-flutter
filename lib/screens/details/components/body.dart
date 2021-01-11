import 'dart:ui';

import 'package:demoonetmt/constants.dart';
import 'package:demoonetmt/models/product.dart';
import 'package:demoonetmt/screens/details/components/product_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'chat_and_add_cart.dart';
import 'list_of_colors.dart';

class BodyDetails extends StatelessWidget {
  final Product product;
  const BodyDetails({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    //it enable scrolling on small devices
    return SafeArea(
      bottom: false,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget> [
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              decoration: BoxDecoration(
                color: kBackgoundColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget> [
                  Center(
                      child: Hero(
                        tag: '${product.id}',
                        child: ProductPoster(
                          size: size,
                          addressImage: product.image,
                        ),
                      )
                  ),
                  ListOfColors(),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: kDefaultPadding /2 ),
                    child: Text(
                      product.title,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                  Text(
                    "\$${product.price}",
                    style: TextStyle(
                      color: kSecondaryColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(top: kDefaultPadding/2, bottom: kDefaultPadding),
                    child: Text(
                      product.description,
                      style: TextStyle(
                        color: kTextLightColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ChatAndAddToCart(),
          ],
        ),
      ),
    );
  }
}