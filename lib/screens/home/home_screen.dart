import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/screens/home/variants/desktop/nav_bar_site.dart';
import 'package:portfolio/screens/home/variants/desktop/projects_grid.dart';
import 'package:portfolio/screens/home/variants/desktop/tech_menu.dart';
import 'package:portfolio/utils/gradient_text.dart';

import '../../models/projects.dart';
import '../../models/tech.dart';
import 'bloc/home_bloc.dart';
import 'variants/desktop/home_body_desktop.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Tech> defaultList = [
      Tech('flutter',
          'https://firebasestorage.googleapis.com/v0/b/portfolio-99820.appspot.com/o/tech%2Fflutter-logo_drzj7u.png?alt=media&token=64bb9938-ea2f-48e7-843a-f8e41eab0996')
    ];

    List<Projects> projList = [
      Projects('name', 1, 'disc', 'link'),
      Projects('name', 1, 'disc', 'link'),
      Projects('name', 1, 'disc', 'link'),
      Projects('name', 1, 'disc', 'link')
    ];
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SafeArea(
          child: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        child: SingleChildScrollView(
          child: BlocConsumer<HomeBloc, HomeState>(
            builder: (context, state) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const NavBarSite(),
                  const SizedBox(
                    height: 20,
                  ),
                  const HomeBodyDesktop(
                      name: 'Lorem Ipsum', image: AssetImage('images/man.png')),
                  const SizedBox(
                    height: 50,
                  ),
                  SizedBox(child: TechStackMenu(list: defaultList)),
                  const SizedBox(
                    height: 10,
                  ),
                  const GradientText(
                    'Projects over\nthe years',
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
                    align: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ProjectsGrid(projList)
                ],
              );
            },
            listener: (context, state) {
              if(state is UserGotState){
                print('user got');
                print(state.user);
              }
              else if(state is ErrorState){
                print('getting failed');
                print(state.error);
              }
            },
          ),
        ),
      )),
    );
  }
}
