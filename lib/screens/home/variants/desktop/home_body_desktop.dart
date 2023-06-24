import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/utils/gradient_text.dart';

String subtext = 'Building digital\n Products, Brands,\n and experience.';

class HomeBodyDesktop extends StatelessWidget {
  final ImageProvider? image;
  final String name;

  const HomeBodyDesktop({super.key, this.image, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 50,
            child: Image(image: image ?? image!),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Hi, I'm $name",
            style: const TextStyle(
                fontSize: 14, color: Colors.grey, fontFamily: 'Open Sans'),
          ),
          const SizedBox(
            height: 10,
          ),
          GradientText(
            subtext,
            style: const TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
            align: TextAlign.center,
          ),
          const SizedBox(
            height: 20,
          ),
          MaterialButton(
            hoverColor: Colors.black54,
            onPressed: () {},
            color: Colors.black12,
            child: buttonBody(),
          )
        ],
      ),
    );
  }

  Widget buttonBody() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
      child: Wrap(
        direction: Axis.horizontal,
        alignment: WrapAlignment.spaceAround,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          Text(
            "Load More",
            style: TextStyle(color: Colors.grey, fontSize: 14),
          ),
          SizedBox(width: 10),
          FaIcon(
            FontAwesomeIcons.externalLink,
            color: Colors.grey,
            size: 15,
          )
        ],
      ),
    );
  }
}
