import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: ElevatedButton(
            child: Text(
              'Conhecer Salões',
              style: GoogleFonts.ubuntu(fontSize: 18),
            ),
            onPressed: () {},
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.pink),
                shadowColor: MaterialStateProperty.all(Colors.transparent),
                minimumSize: MaterialStateProperty.all(
                  Size(size.width, 51),
                ),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ))),
          ),
        ),
      ],
    );
  }
}
