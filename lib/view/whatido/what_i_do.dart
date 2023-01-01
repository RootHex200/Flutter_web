import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sabitur_portfolio/model/responsive.dart';
import 'package:sabitur_portfolio/utils/colors.dart';
import 'package:sabitur_portfolio/utils/const.dart';

class What_i_do extends StatelessWidget {
  const What_i_do({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive(
        mobile: mobile_part(context), web: web_part(context), tablet: web_part(context));
  }

  Widget web_part(context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(left: 50, right: 50),
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         
          Column(
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:const  [
                        Image(
                // height: 20,
                color: Appcolor.primary,
                image: AssetImage("assets/images/front-end.png"),
                fit: BoxFit.cover,
              ),
              SizedBox(width: 8,),
                                       Text(
                      "Front-End Design",
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 2 - 100,
                      child: AutoSizeText(
                        front_end,
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin:const  EdgeInsets.only(top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      
                      children:const [
                                                Image(
                // height: 20,
                color: Appcolor.primary,
                image: AssetImage("assets/images/security.png"),
                fit: BoxFit.cover,
              ),
              SizedBox(width: 8,),
               Text(
                      "Security Research",
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 2 - 100,
                      child: AutoSizeText(
                        ctf,
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(

                      children:const  [
                                                                        Image(
                // height: 20,
                color: Appcolor.primary,
                image: AssetImage("assets/images/api.png"),
                fit: BoxFit.cover,
              ),
              SizedBox(width: 8,),
                                          Text(
                      "REST-Full API",
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 2 - 100,
                      child: AutoSizeText(
                        rest_api,
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
              //   SizedBox(height: 20,),
              // Container(
              //     child: Column(
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: [
              //         const Text("Front-End Design",style: TextStyle(color: Colors.white,fontSize: 22),),
              //         const SizedBox(height: 10,),
              //         Container(
              //           width: MediaQuery.of(context).size.width/2 - 100,
              //           child: AutoSizeText(front_end,
              //           textAlign: TextAlign.justify,
              //           style: TextStyle(fontSize: 18,color: Colors.white),),
              //         )
              //       ],
              //     ),
              //   ),
            ],
          )
        ],
      ),
    );
  }

  Widget mobile_part(context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin:const EdgeInsets.only(left: 30,right: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FittedBox(
            child: Row(
              children:const [
                Image(
                  // height: 20,
                  color: Appcolor.primary,
                  image: AssetImage("assets/images/front-end.png"),
                  fit: BoxFit.cover,
                ),
                SizedBox(width: 8,),
                 Text(
                    "Front-End Design",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
              ],
            ),
          ),
                  
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 100,
                  child: AutoSizeText(
                    front_end,
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
          SizedBox(
            height: 30,
          ),
          //REST-Full API
          FittedBox(
            child: Row(
              children:const [
                Image(
                  // height: 20,
                  color: Appcolor.primary,
                  image: AssetImage("assets/images/api.png"),
                  fit: BoxFit.cover,
                ),
                SizedBox(width: 8,),
                 Text(
                    "REST-Full API",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
              ],
            ),
          ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 100,
                  child: AutoSizeText(
                    rest_api,
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
                  SizedBox(
            height: 30,
          ),
                    //REST-Full API
          FittedBox(
            child: Row(
              children:const [
                Image(
                  // height: 20,
                  color: Appcolor.primary,
                  image: AssetImage("assets/images/security.png"),
                  fit: BoxFit.cover,
                ),
                SizedBox(width: 8,),
                 Text(
                    "Security Research",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
              ],
            ),
          ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 100,
                  child: AutoSizeText(
                    ctf,
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
        ],
      ),
    );
  }
}
