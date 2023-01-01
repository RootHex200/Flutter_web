import 'package:flutter/material.dart';
import 'package:sabitur_portfolio/model/responsive.dart';
import 'package:sabitur_portfolio/utils/const.dart';
import 'package:sabitur_portfolio/view/project/project_demo1.dart';
import 'package:sabitur_portfolio/view/project/project_demo2.dart';
import 'package:sabitur_portfolio/view/project/project_demon3.dart';
import 'package:sabitur_portfolio/view/project/project_demon4.dart';

// ignore: camel_case_types
class Project_part extends StatelessWidget {
  const Project_part({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive(
        mobile: const Web_part(),
        web: const Web_part(),
        tablet: const Web_part());
  }
}

// ignore: camel_case_types
class Web_part extends StatelessWidget {
  const Web_part({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    project,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.white),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    project_title1,
                    style: const TextStyle(fontSize: 18, color: Colors.white),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    project_title2,
                    style: const TextStyle(fontSize: 18, color: Colors.white),
                  )),
            ),
            const SizedBox(
              height: 40,
            ),

            //project1
            const Project_demo1(),
            const SizedBox(
              height: 20,
            ),
            const Project_demo4(),

            const SizedBox(
              height: 20,
            ),
            const Project_demo2(),
            const SizedBox(
              height: 20,
            ),
            const Project_demo3(),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
