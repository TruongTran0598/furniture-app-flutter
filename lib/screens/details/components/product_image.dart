import 'package:flutter/material.dart';
import '../../../constants.dart';

class ProductPoster extends StatelessWidget {
  const ProductPoster ({
    Key key,
    @required this.size,
    this.addressImage,
  }) : super(key: key);

  final Size size;
  final String addressImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
      //The height of this container is 80% of our width
      height: size.width*0.8,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget> [
          Container(
            height: size.width*0.7,
            width: size.width*0.7,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
          ),

          Image.asset(
              addressImage,
              height: size.width * 0.75,
              width: size.width * 0.75,
              fit: BoxFit.cover
          ),
        ],
      ),
    );
  }
}