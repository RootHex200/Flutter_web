import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sabitur_portfolio/utils/const.dart';
import 'dart:html' as html;
class Row_icon extends StatelessWidget {
  const Row_icon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(icon_list.length, (index) {
          return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: InkWell(
                onTap: (){
html.window.open(open_link[index], 'new tab');
                },
                child: Image(
                  // height: 20,
                  color: Colors.white,
                  image: AssetImage(icon_list[index]),
                  fit: BoxFit.cover,
                ),
              ));
        }),
      ),
    );
  }
}
