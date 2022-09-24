import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sabitur_portfolio/model/responsive.dart';
import 'package:sabitur_portfolio/utils/row_icon.dart';

import '../../utils/colors.dart';
import '../../utils/const.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: MediaQuery.of(context).size.width,
      child:MediaQuery.of(context).size.width<=300?
      FittedBox(child: footer_body(),)
      :footer_body(),
    );
  }


    Widget footer_body() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children:const  [
         Padding(
          padding: EdgeInsets.only(left: 10,right: 10),
          child: Text(
            "@2022 Sabitur Rahman. Made in Bangladesh.",
            style:
                TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
         SizedBox(
          height: 20,
        ),
        Row_icon(),
      ],
    );
  }
}

