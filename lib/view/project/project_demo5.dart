
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:sabitur_portfolio/model/responsive.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;
import '../../utils/const.dart';

//https://github.com/RootHex200/Wallpaper_station

// ignore: camel_case_types
class Project_demo5 extends StatelessWidget {
  const Project_demo5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive(
        mobile: mobile_part(context),
        web: web_part(context),
        tablet: tablet_part(context));
  }

  Widget web_part(context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2,
      height: 225,
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
                    image: AssetImage('assets/images/auction.png'),
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
                        child: Container(
                          width: 70,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              InkWell(
                            onTap: () {
                              html.window.open(
                                  "https://github.com/RootHex200/Auction-App",
                                  'new tab');
                            },
                            child: Image(
                              color: Colors.white,
                              // height: 20,
                              image: AssetImage(icon_list[2]),
                              fit: BoxFit.cover,
                            ),
                          ),
                         const SizedBox(width: 20,),
                          InkWell(
                            onTap: () {
                              html.window.open(
                                  "https://drive.google.com/file/d/10P2IgMyglC76n2URLKnZA0UPdb-bXxmg/view?usp=share_link",
                                  'new tab');
                            },
                            child: const Image(
                              color: Colors.white,
                              height: 20,
                              image: AssetImage("assets/images/playstore.png"),
                              fit: BoxFit.cover,
                            ),
                          )
                            ],
                          ),
                        )
                        ),
                  ),
                  Text(
                    auction,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  AutoSizeText(
                    auction_details,
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
      margin: const EdgeInsets.only(left: 90, right: 90),
      height: MediaQuery.of(context).size.width <= 774.0 ? 275 : 225,
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
                    image: AssetImage('assets/images/auction.png'),
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
                        child: Container(
                          width: 70,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              InkWell(
                            onTap: () {
                              html.window.open(
                                  "https://github.com/RootHex200/Auction-App",
                                  'new tab');
                            },
                            child: Image(
                              color: Colors.white,
                              // height: 20,
                              image: AssetImage(icon_list[2]),
                              fit: BoxFit.cover,
                            ),
                          ),
                         const SizedBox(width: 20,),
                          InkWell(
                            onTap: () {
                              html.window.open(
                                  "https://drive.google.com/file/d/10P2IgMyglC76n2URLKnZA0UPdb-bXxmg/view?usp=share_link",
                                  'new tab');
                            },
                            child: const Image(
                              color: Colors.white,
                              height: 20,
                              image: AssetImage("assets/images/playstore.png"),
                              fit: BoxFit.cover,
                            ),
                          )
                            ],
                          ),
                        )
                        ),
                  ),
                  Text(
                    auction,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  AutoSizeText(
                    auction_details,
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

  Widget mobile_part(context) {
    return FittedBox(
      child: Container(
        height: 275,
        width: 500,
        margin: const EdgeInsets.only(left: 20, right: 20),
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
                          image: AssetImage('assets/images/auction.png'),
                          fit: BoxFit.fill)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 60),
                  child: Text(
                    auction,
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
                      child:  Container(
                          width: 70,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              InkWell(
                            onTap: () {
                              html.window.open(
                                  "https://github.com/RootHex200/Auction-App",
                                  'new tab');
                            },
                            child: Image(
                              color: Colors.white,
                              // height: 20,
                              image: AssetImage(icon_list[2]),
                              fit: BoxFit.cover,
                            ),
                          ),
                         const SizedBox(width: 20,),
                          InkWell(
                            onTap: () {
                              html.window.open(
                                  "https://drive.google.com/file/d/10P2IgMyglC76n2URLKnZA0UPdb-bXxmg/view?usp=share_link",
                                  'new tab');
                            },
                            child: const Image(
                              color: Colors.white,
                              height: 20,
                              image: AssetImage("assets/images/playstore.png"),
                              fit: BoxFit.cover,
                            ),
                          )
                            ],
                          ),
                        )
                      ),
                ),
              ],
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(right: 10, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    AutoSizeText(
                      auction_details,
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
