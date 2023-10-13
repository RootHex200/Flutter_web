import 'package:flutter/cupertino.dart';

// ignore: must_be_immutable
class Responsive extends StatelessWidget {
  Widget mobile;
  Widget web;
  Widget tablet;
  Responsive(
      {Key? key, required this.mobile, required this.web, required this.tablet})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, contraint) {
      if (contraint.maxWidth > 1200) {
        return web;
      }
      if (contraint.maxWidth >= 700.0 && contraint.maxWidth <= 1200.0) {
        return tablet;
      }
      return mobile;
    });
  }
}
