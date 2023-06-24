import 'package:flutter/material.dart';

class GradientText extends StatelessWidget {
  const GradientText(
      this.text, {
        this.style, this.align = TextAlign.start  ,
      });

  final String text;
  final TextStyle? style;
  final TextAlign align;

  @override
  Widget build(BuildContext context) {
    Gradient gradient =  const LinearGradient(colors: [
      Colors.white,
      Colors.white60,
    ]);

    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(text, style: style,textAlign: align,),
    );
  }
}