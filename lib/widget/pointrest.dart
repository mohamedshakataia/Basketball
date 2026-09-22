import 'package:flutter/material.dart';

class Buttonpoint1 extends StatelessWidget {
  const Buttonpoint1({super.key, required this.textbutton, this.ontap});
  final String textbutton;
  final Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
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
