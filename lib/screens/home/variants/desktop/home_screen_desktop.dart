import 'package:flutter/material.dart';

import 'nav_bar_site.dart';

class HomeScreenDesktop extends StatelessWidget {
  const HomeScreenDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: SizedBox(
            width: MediaQuery.sizeOf(context).width,
            child: const SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  NavBarSite(),
                ],
              ),
            ),
          )),
    );
  }
}
