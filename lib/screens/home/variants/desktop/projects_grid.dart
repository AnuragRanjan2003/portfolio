import 'package:flutter/material.dart';

import '../../../../models/projects.dart';

class ProjectsGrid extends StatelessWidget {
  final List<Projects> list;

  const ProjectsGrid(this.list, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      child: Column(
        children: List.generate(
            2,
            (index) => Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: List.generate(4, (index) => gridItem(list[index])),
                )),
      ),
    );
  }

  Widget gridItem(Projects project) {
    return Container(
      width: 200,
      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
      margin: const EdgeInsets.only(right: 10, bottom: 20),
      decoration: const BoxDecoration(
          color: Colors.black26,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 100,
          ),
          Text(
            'title',
            style: TextStyle(fontSize: 20, color: Colors.grey),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'disc',
            style: TextStyle(fontSize: 15, color: Colors.grey),
            overflow: TextOverflow.fade,
          )
        ],
      ),
    );
  }
}
