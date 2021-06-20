import 'package:app/intro/pages/base_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SecondPage extends StatelessWidget {
  final BoxFit fit;
  final double tileScale;
  const SecondPage({
    Key? key,
    this.fit = BoxFit.cover,
    this.tileScale = 3.5,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BasePage(
      children: [
        SvgPicture.asset(
          'assets/images/phone2.svg',
          fit: fit,
        ),
        Positioned(
          child: Image.asset(
            'assets/images/tiles/date_tile.png',
            scale: tileScale,
          ),
          right: 0,
        ),
      ],
    );
  }
}
