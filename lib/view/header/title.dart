import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sabitur_portfolio/model/responsive.dart';
import 'package:sabitur_portfolio/utils/colors.dart';

class Title_part extends StatelessWidget {
  const Title_part({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive(mobile: mobile_part(context), web: web_part(context), tablet:web_part(context));
  }

  Widget mobile_part(BuildContext context) {
    return Container(
      margin:const  EdgeInsets.only(top: 80),
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text("Hello, I'm Sabitur !",style: TextStyle(color:Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
        const SizedBox(height: 10,),
        const SizedBox(height: 20,),
       MediaQuery.of(context).size.width<=270? 
       Column(
        children: [
                  Padding(
          padding: const EdgeInsets.only(left: 20,right: 20),
          child: ElevatedButton(onPressed: (){}, 
          style: ButtonStyle(backgroundColor:MaterialStateProperty.all(Appcolor.button2)),child:const  Center(
                child: Text("    Project    "),
              )),
        ),
        const SizedBox(height: 10,),
                Padding(
          padding: const EdgeInsets.only(left: 20,right: 20),
          child: ElevatedButton(onPressed: (){},
          style: ButtonStyle(backgroundColor:MaterialStateProperty.all(Appcolor.button1)), child:const  Center(
                child:Text("Resume",style: TextStyle(color: Colors.white)),
              )),
        ),
        ],
       )
       :Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){}, 
            style: ButtonStyle(backgroundColor:MaterialStateProperty.all(Appcolor.button2)),
            child:const  Center(
              child: Text("    Project    "),
            )),
            const SizedBox(width: 20,),
            ElevatedButton(onPressed: (){}, 
            style: ButtonStyle(backgroundColor:MaterialStateProperty.all(Appcolor.button1)),
            child: 
            const Center(
              child: Text("    Resume    ",style: TextStyle(color: Colors.white)),
            )
            )
          ],
        )
        
      ],
        ),
    );
  }

  Widget web_part(BuildContext context) {
    return Container(
      margin:const  EdgeInsets.only(top: 80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text("Hello, I'm Sabitur !",style: TextStyle(color:Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
        const SizedBox(height: 10,),
        const Text("I build Things for mobile,web,desktop",style: TextStyle(fontSize:18 ),),
        const SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){},
            style: ButtonStyle(backgroundColor:MaterialStateProperty.all(Appcolor.button2)), child:const  Center(
              child: Text("    Project    "),
            )),
            const SizedBox(width: 20,),
            ElevatedButton(onPressed: (){}, 
            style: ButtonStyle(backgroundColor:MaterialStateProperty.all(Appcolor.button1)),
            child: 
            const Center(
              child: Text("    Resume    ",style: TextStyle(color: Colors.white),),
            )
            )
          ],
        )
      ],
        ),
    );
  }



}

