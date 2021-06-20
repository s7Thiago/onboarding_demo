import 'package:app/intro/pages/base_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FirstPage extends StatelessWidget {
  final BoxFit fit;
  final double tileScale;
  const FirstPage({
    Key? key,
    this.fit = BoxFit.contain,
    this.tileScale = 3.5,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BasePage(
      children: [
        SvgPicture.asset(
          'assets/images/phone1.svg',
          fit: fit,
        ),
        Positioned(
          child: Image.asset(
            'assets/images/tiles/text_tile.png',
            scale: tileScale,
          ),
          right: 0,
        ),
      ],
    );
  }
}
