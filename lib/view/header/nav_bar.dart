import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sabitur_portfolio/model/responsive.dart';
import 'package:sabitur_portfolio/utils/colors.dart';
import 'package:sabitur_portfolio/utils/const.dart';
import 'package:sabitur_portfolio/utils/row_icon.dart';

class Nav_bar extends StatelessWidget {
  const Nav_bar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive(
        mobile: mobile_part(context),
        web: web_part(context),
        tablet: web_part(context));
  }

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
                  child: Text("About",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                      )),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "/project");
                  },
                  child: Text('Project',
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

  Widget web_part(context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            child: Row(
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
                    child: Text('Project',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                        )),
                  ),
                )
              ],
            ),
          ),

          //right side
          const MouseRegion(cursor: SystemMouseCursors.click, child: Row_icon())
        ],
      ),
    );
  }
}
