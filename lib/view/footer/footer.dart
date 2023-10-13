import 'package:flutter/material.dart';
import 'package:sabitur_portfolio/model/responsive.dart';
import 'package:sabitur_portfolio/utils/row_icon.dart';


class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: MediaQuery.of(context).size.width,
      child:MediaQuery.of(context).size.width<=300?
      FittedBox(child: footer_body(),)
      :footer_body(),
    );
  }


    // ignore: non_constant_identifier_names
    Widget footer_body() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children:[
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

