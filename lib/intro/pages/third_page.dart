import 'package:app/intro/pages/base_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ThirdPage extends StatelessWidget {
  final BoxFit fit;
  final double tileScale;
  const ThirdPage({
    Key? key,
    this.fit = BoxFit.cover,
    this.tileScale = 3.5,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BasePage(
      children: [
        SvgPicture.asset(
          'assets/images/phone3.svg',
          fit: fit,
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 100),
          child: Positioned(
            child: Image.asset(
              'assets/images/tiles/action_tile.png',
              scale: tileScale,
            ),
            right: 0,
          ),
        ),
        Positioned(
          right: 0,
          child: Padding(
            padding: const EdgeInsets.only(top: 80, left: 100),
            child: Image.asset(
              'assets/images/tiles/action_tile_part.png',
              scale: tileScale * 1.1,
            ),
          ),
        ),
      ],
    );
  }
}
