import 'package:app/intro/botton_bar.dart';
import 'package:app/intro/custom_header.dart';
import 'package:app/intro/pages/first_page.dart';
import 'package:app/intro/pages/second_page.dart';
import 'package:app/intro/pages/third_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: prefer_const_constructors
main() => runApp(MaterialApp(
      home: Scaffold(
        body: Center(
          child: AppHome(),
        ),
        backgroundColor: Colors.white,
      ),
    ));

class AppHome extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  AppHome({Key? key}) : super(key: key);

  @override
  State<AppHome> createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {
  final PageController _controller = PageController();

  final fit = BoxFit.contain;

  final descriptions = <String>[
    'Encontre salões de beleza e clínicas de estética próximos de você com facilidade.',
    'Nunca mais esqueça um horário no cabeleireiro, esmalteria ou esteticista com os nossos lembretes.',
    'Agende um serviço com rapidez e sem problemas.'
  ];

  final descriptionsTop = <String>[
    'Boas vindas ao Clube Salon',
    'Nunca mais\n perca o horário',
    'Agendamento na palma da sua mão'
  ];
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {
        currentPage = _controller.page!.round().toInt();
      });

      print('current_page: $currentPage');
    });
  }

  @override
  Widget build(BuildContext context) {
    const double tileScale = 3.8;

    return Stack(
      children: [
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            PageView(
              controller: _controller,
              physics: const BouncingScrollPhysics(),
              children: [
                FirstPage(fit: fit, tileScale: tileScale),
                SecondPage(fit: fit, tileScale: tileScale),
                ThirdPage(fit: fit, tileScale: tileScale),
              ],
            ),
            CustomBottomBar(
              description: descriptions[currentPage],
              selectedIndex: currentPage,
            )
          ],
        ),
        CustomHeader(description: descriptionsTop[currentPage]),
      ],
    );
  }
}
