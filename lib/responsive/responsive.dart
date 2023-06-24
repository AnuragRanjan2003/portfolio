import 'package:flutter/cupertino.dart';
import 'package:portfolio/responsive/sizes.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget desktop;
  const Responsive({super.key, required this.mobile, required this.desktop});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder:(context, constraints) {
          if(constraints.maxWidth < mobileSize) {
            return mobile;
          } else {
            return desktop;
          }
        },);
  }
}
