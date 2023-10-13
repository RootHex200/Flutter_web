import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sabitur_portfolio/view/header/nav_bar.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children:[
        Nav_bar(),
      ],
    );
  }
}
