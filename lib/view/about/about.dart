import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:sabitur_portfolio/model/responsive.dart';
import 'package:sabitur_portfolio/utils/colors.dart';
import 'package:sabitur_portfolio/utils/const.dart';
import 'dart:html' as html;

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive(
        mobile: mobile_part(context),
        web: web_part(context),
        tablet: web_part(context));
  }

  Widget web_part(context) {
    return Container(
      margin: const EdgeInsets.only(top: 50, left: 20, right: 20),
      height: 300,
      width: MediaQuery.of(context).size.width,
      // color: Colors.red.withOpacity(0.2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //let side
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AutoSizeText(
                about_title,
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 22),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 430,
                child: AutoSizeText(
                  about_details,
                  textAlign: TextAlign.justify,
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              cv_dowload()
            ],
          ),
          const SizedBox(
            width: 20,
          ),
          const CircleAvatar(
            radius: 100,
            backgroundImage: AssetImage("assets/images/sabitur.png"),
          ),
        ],
      ),
    );
  }

  Widget mobile_part(context) {
    return Container(
      margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AutoSizeText(
            about_title,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: 430,
            child: AutoSizeText(
              about_details,
              textAlign: TextAlign.justify,
              style: const TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          cv_dowload(),
          const SizedBox(
            height: 30,
          ),
          const Align(
            alignment: Alignment.center,
            child: CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage("assets/images/sabitur.png"),
            ),
          )
        ],
      ),
    );
  }

  Widget cv_dowload() {
    return ElevatedButton(
        onPressed: () {
          html.window.open(
              "https://drive.google.com/file/d/1Rt1D9ieCZpfgmichRuK0BLNUwyTyywh8/view?usp=share_link",
              'new tab');
        },
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Appcolor.primary)),
        child: const Text(
          "Download CV",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ));
  }
}
