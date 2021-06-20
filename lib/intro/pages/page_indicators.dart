import 'package:flutter/material.dart';

class PageIndicators extends StatelessWidget {
  final int? selectedIndex;
  const PageIndicators({Key? key, this.selectedIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _Indicator(selectedIndex: selectedIndex!, selfIndex: 0),
        _Indicator(selectedIndex: selectedIndex!, selfIndex: 1),
        _Indicator(selectedIndex: selectedIndex!, selfIndex: 2),
      ],
    );
  }
}

class _Indicator extends StatelessWidget {
  final double selfIndex;
  final int selectedIndex;
  final double size;

  const _Indicator({
    this.selfIndex = 0,
    this.selectedIndex = 0,
    this.size = 10,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      margin: const EdgeInsets.symmetric(horizontal: 2),
      decoration: BoxDecoration(
        color: selfIndex == selectedIndex ? Colors.pink : Colors.grey,
        borderRadius: BorderRadius.circular(size * .5),
      ),
    );
  }
}
