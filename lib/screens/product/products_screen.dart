import 'package:demoonetmt/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../constants.dart';
import './components/body.dart';

class ProductsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: kPrimaryColor,
    appBar: buildAppBar(),
    body: Body(),
  );

  AppBar buildAppBar() => AppBar(
    elevation: 0,
    title: Text("Dashboard"),
    centerTitle: false,
    actions: <Widget>[
      IconButton(
        icon: SvgPicture.asset("assets/icons/notification.svg"),
        onPressed: (){

        },
      )
    ],
  );
}