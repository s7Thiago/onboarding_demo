import 'package:app/intro/custom_button.dart';
import 'package:app/intro/pages/page_indicators.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomBottomBar extends StatelessWidget {
  final shadow = Colors.white;
  final String? description;
  final int? selectedIndex;

  const CustomBottomBar({
    Key? key,
    this.description = 'none',
    this.selectedIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        IgnorePointer(
          ignoring: true,
          child: Container(
            height: 350,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: const [.1, .2],
                colors: [
                  shadow.withOpacity(0),
                  shadow,
                ],
              ),
            ),
          ),
        ),
        Container(
          height: 350,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(height: 50),
              IgnorePointer(
                ignoring: true,
                child: Container(
                  width: 165,
                  height: 100,
                  child: Text(
                    description!,
                    style: GoogleFonts.ubuntu(),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              PageIndicators(selectedIndex: selectedIndex),
              const Padding(
                padding: EdgeInsets.all(24),
                child: CustomButton(),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Criar Conta',
                  style: GoogleFonts.ubuntu(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
