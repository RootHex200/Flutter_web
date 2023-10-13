import 'package:flutter/material.dart';
import 'package:sabitur_portfolio/model/responsive.dart';
import 'package:sabitur_portfolio/utils/colors.dart';
import 'package:sabitur_portfolio/utils/row_icon.dart';

// ignore: camel_case_types
class Nav_bar extends StatelessWidget {
  const Nav_bar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive(
        mobile: mobile_part(context),
        web: web_part(context),
        tablet: web_part(context));
  }

  // ignore: non_constant_identifier_names
  Widget mobile_part(context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RichText(
              text: const TextSpan(children: [
            TextSpan(
                text: "Sabitur",
                style: TextStyle(color: Appcolor.primary, fontSize: 23)),
            TextSpan(
                text: "Rahman",
                style: TextStyle(color: Colors.white, fontSize: 23))
          ])),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "/");
                  },
                  child: const Text("About",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                      )),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "/project");
                  },
                  child: const Text('Project',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                      )),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget web_part(context) {
    return SizedBox(
      height: 50,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            children: [
              RichText(
                  text: const TextSpan(children: [
                TextSpan(
                    text: "Sabitur",
                    style: TextStyle(color: Appcolor.primary, fontSize: 23)),
                TextSpan(
                    text: "Rahman",
                    style: TextStyle(color: Colors.white, fontSize: 23))
              ])),
              const SizedBox(
                width: 30,
              ),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "/");
                  },
                  child: const Text("About",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                      )),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "/project");
                  },
                  child: const Text('Project',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                      )),
                ),
              )
            ],
          ),

          //right side
          const MouseRegion(cursor: SystemMouseCursors.click, child: Row_icon())
        ],
      ),
    );
  }
}
