


import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sabitur_portfolio/model/responsive.dart';

import '../../utils/const.dart';
import 'dart:html' as html;
class Project_demo3 extends StatelessWidget {
  const Project_demo3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive(
        mobile: mobile_part(context),
        web: web_part(context),
        tablet: tablet_part(context));
  }
//https://github.com/RootHex200/Fullstack-taskmanager
  Widget web_part(context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2,
      height: 200,
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.2),
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          Container(
            width: 250,
            height: double.maxFinite,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20)),
                image: DecorationImage(
                    image: AssetImage('assets/images/task.png'),
                    fit: BoxFit.fill)),
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, right: 10),
                    child: Align(
                        alignment: Alignment.topRight,
                        child: InkWell(
                          onTap: (){
                               html.window.open("https://github.com/RootHex200/Fullstack-taskmanager", 'new tab');
                          },
                          child: Image(
                            color: Colors.white,
                            // height: 20,
                            image: AssetImage(icon_list[2]),
                            fit: BoxFit.cover,
                          ),
                        )),
                  ),
                  Text(
                    task,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  AutoSizeText(
                    task_details,
                    textAlign: TextAlign.justify,
                    style: const TextStyle(fontSize: 15, color: Colors.white),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget tablet_part(context) {
    return Container(
      margin: EdgeInsets.only(left: 90,right: 90),
      height:MediaQuery.of(context).size.width<=774.0?250: 200,
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.2),
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          Container(
            width: 250,
            height: double.maxFinite,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20)),
                image: DecorationImage(
                    image: AssetImage('assets/images/task.png'),
                    fit: BoxFit.fill)),
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, right: 10),
                    child: Align(
                        alignment: Alignment.topRight,
                        child: InkWell(
                                                    onTap: (){
                               html.window.open("https://github.com/RootHex200/Fullstack-taskmanager", 'new tab');
                          },
                          child: Image(
                            color: Colors.white,
                            // height: 20,
                            image: AssetImage(icon_list[2]),
                            fit: BoxFit.cover,
                          ),
                        )),
                  ),
                  Text(
                    task,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  AutoSizeText(
                    task_details,
                    textAlign: TextAlign.justify,
                    style: const TextStyle(fontSize: 15, color: Colors.white),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }


  Widget mobile_part(context){
    return FittedBox(
      child: Container(
        height: 250,
        width: 500,
        margin: EdgeInsets.only(left: 20,right: 20),
        decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.2),
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 250,
                height: 150,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                    ),
                    image: DecorationImage(
                        image: AssetImage('assets/images/task.png'),
                        fit: BoxFit.fill)),
              ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 60),
                                    child: Text(
                                                        task,
                                                        style: const TextStyle(
                                                            fontWeight: FontWeight.bold,
                                                            color: Colors.white,
                                                            fontSize: 20),
                                                      ),
                                  ),
              Padding(
                        padding: const EdgeInsets.only(top: 20, right: 10),
                        child: Align(
                            alignment: Alignment.topRight,
                            child: InkWell(
                                                        onTap: (){
                               html.window.open("https://github.com/RootHex200/Fullstack-taskmanager", 'new tab');
                          },
                              child: Image(
                                color: Colors.white,
                                // height: 20,
                                image: AssetImage(icon_list[2]),
                                fit: BoxFit.cover,
                              ),
                            )),
                      ),
            ],
          ),
                      Expanded(
                child: Container(
                  
                  margin: const EdgeInsets.only(right: 10,left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 15,
                      ),
                      AutoSizeText(
                        task_details,
                        textAlign: TextAlign.justify,
                        style: const TextStyle(fontSize: 15, color: Colors.white),
                      )
                    ],
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}