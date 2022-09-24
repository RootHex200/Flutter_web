import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sabitur_portfolio/utils/row_icon.dart';
import 'package:sabitur_portfolio/view/about/about.dart';
import 'package:sabitur_portfolio/view/footer/footer.dart';
import 'package:sabitur_portfolio/view/header/header.dart';
import 'package:sabitur_portfolio/view/header/nav_bar.dart';
import 'package:sabitur_portfolio/view/project/project.dart';
import 'package:sabitur_portfolio/view/whatido/what_i_do.dart';

class Home_page extends StatelessWidget {
  const Home_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:const  [ 
          Header(),
          About(),
          SizedBox(height: 30,),
          Center(
            child: AutoSizeText("WHAT I DO",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
          ),
          SizedBox(height: 30,),
          What_i_do(),
          SizedBox(height: 50,),
          Divider(color: Colors.white,thickness: 1,),
     
          Footer()
          ]),
      ),
    );
  }
}
