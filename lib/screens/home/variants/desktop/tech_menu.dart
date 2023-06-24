import 'package:flutter/material.dart';

import '../../../../models/tech.dart';

class TechStackMenu extends StatelessWidget {
  const TechStackMenu({super.key, required this.list});

  final List<Tech> list;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      color: Colors.black26,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(list.length, (index) => listBody(list[index]))
      ),
    );
  }

  Widget listBody(Tech tech) {
    return InkWell(
      onTap: () {},
      onHover: (h) { if(h) print('hovering');},
      child: Wrap(
        alignment: WrapAlignment.spaceAround,
        crossAxisAlignment: WrapCrossAlignment.center,
        direction: Axis.vertical,
        spacing: 10,
        children: [
          Image(
              image: NetworkImage(tech.url),
              height: 60,
              width: 60,
              fit: BoxFit.fitWidth),
          Text(
            tech.name,
            style: const TextStyle(color: Colors.grey, fontSize: 14),
          )
        ],
      ),
    );
  }
}
