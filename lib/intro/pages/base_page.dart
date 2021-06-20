import 'package:flutter/material.dart';

class BasePage extends StatelessWidget {
  final List<Widget>? children;
  const BasePage({Key? key, this.children}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    print('size: $size');

    return Center(
      child: Container(
        width: size.width < 390 ? double.infinity : 550,
        child: Stack(
          alignment: Alignment.center,
          fit: StackFit.loose,
          children: children!,
        ),
      ),
    );
  }
}
