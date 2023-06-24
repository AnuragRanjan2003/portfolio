import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../bloc/home_bloc.dart';

class NavBarSite extends StatelessWidget {
  const NavBarSite({super.key});

  @override
  Widget build(BuildContext context) {
    OutlineInputBorder border = const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        borderSide: BorderSide(color: Colors.white));
    return Container(
          color: Colors.black,
          padding:
              const EdgeInsets.only(left: 50, right: 50, top: 10, bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                  width: 300,
                  height: 50,
                  child: Center(
                    child: TextField(
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'Open Sans'),
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                          border: border,
                          focusedBorder: border,
                          labelStyle:
                              const TextStyle(color: Colors.grey, fontSize: 14),
                          labelText: 'Search'),
                    ),
                  )),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  NavItem(
                      FontAwesomeIcons.github,
                      () {}),
                  const SizedBox(width: 100),
                  NavItem(
                      FontAwesomeIcons.linkedin,
                      () {}),
                  const SizedBox(
                    width: 100,
                  ),
                  NavItem(
                      Icons.email_sharp,
                      () {})
                ],
              ),
            ],
          ),
        );


  }
}

IconButton NavItem(IconData iconData, Null Function() param1,) {
  return IconButton(onPressed: param1, icon: FaIcon(iconData),hoverColor: Colors.white);
}

