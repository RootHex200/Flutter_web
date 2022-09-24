import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sabitur_portfolio/utils/colors.dart';
import 'package:sabitur_portfolio/view/header/nav_bar.dart';
import 'package:sabitur_portfolio/view/header/title.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        children:const  [
          Nav_bar(),
        ],
      )
    );
  }
}
