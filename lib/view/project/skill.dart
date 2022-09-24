

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Skill_part extends StatelessWidget {
  const Skill_part({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    return Container(
      height: 300,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              // const SizedBox(
              //   height: 10,
              // ),
              // const AutoSizeText(
              //   "Full-stack developer.based in Barcelon based in",
              //   maxLines: 1,
              //   style: TextStyle(color: Colors.grey, fontSize: 18.0),
              // ),
              // const SizedBox(
              //   height: 8.0,
              // ),
              // const AutoSizeText(
              //   "Full-stack developer.based in Barcelon based in",
              //   maxLines: 1,
              //   style: TextStyle(color: Colors.grey, fontSize: 18.0),
              // ),
              // const SizedBox(
              //   height: 8.0,
              // ),
              // AutoSizeText(
              //   "below more will be added in due time",
              //   maxLines: 1,
              //   style: TextStyle(color: Colors.grey, fontSize: 18.0),
              // ),
              // SizedBox(
              //   height: 10.0,
              // ),
              FittedBox(
                child: Row(
                  children: [
                    Container(
                      width: 180,
                      height: 32,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      padding: EdgeInsets.only(left: 20),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Dart",
                            style: TextStyle(color: Colors.black),
                          )),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      width: 180,
                      height: 5,
                      color: Colors.grey.withOpacity(0.1),
                    ),
                    AutoSizeText(
                      "50%",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              FittedBox(
                child: Container(
                    height: 40,
                    child: Row(
                      children: [
                        Container(
                          width: 180,
                          height: 32,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          padding: EdgeInsets.only(left: 20),
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Flutter",
                                style: TextStyle(color: Colors.black),
                              )),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          width: 180,
                          height: 5,
                          color: Colors.grey.withOpacity(0.1),
                        ),
                        AutoSizeText(
                          "50%",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              FittedBox(
                child: Container(
                    height: 40,
                    child: Row(
                      children: [
                        Container(
                          width: 180,
                          height: 32,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          padding: EdgeInsets.only(left: 20),
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Security",
                                style: TextStyle(color: Colors.black),
                              )),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          width: 180,
                          height: 5,
                          color: Colors.grey.withOpacity(0.1),
                        ),
                        AutoSizeText(
                          "50%",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}