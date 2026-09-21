import 'package:flutter/material.dart';

class Buttonpoint extends StatelessWidget {
  const Buttonpoint({super.key, required this.textbutton});
  final String textbutton;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        alignment: Alignment.center,
        height: 50,
        width: 90,
        child: Text(textbutton),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.amber,
        ),
      ),
    );
  }
}
