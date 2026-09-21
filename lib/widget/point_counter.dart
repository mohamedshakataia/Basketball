import 'package:basketball/helper/button.dart';
import 'package:flutter/material.dart';

class PointCounter extends StatelessWidget {
  const PointCounter({super.key});
  static String id = 'pointcounter';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text('Team A', style: TextStyle(fontSize: 32)),
                    SizedBox(height: 20),
                    Text('0', style: TextStyle(fontSize: 110)),
                    SizedBox(height: 30),
                    Buttonpoint(textbutton: 'Add 1 Point'),
                    SizedBox(height: 20),
                    Buttonpoint(textbutton: 'Add 2 Point'),
                    SizedBox(height: 20),
                    Buttonpoint(textbutton: 'Add 3 Point'),
                  ],
                ),
                Column(
                  children: [
                    Text('Team A', style: TextStyle(fontSize: 32)),
                    SizedBox(height: 20),
                    Text('0', style: TextStyle(fontSize: 110)),
                    SizedBox(height: 30),
                    Buttonpoint(textbutton: 'Add 1 Point'),
                    SizedBox(height: 20),
                    Buttonpoint(textbutton: 'Add 2 Point'),
                    SizedBox(height: 20),
                    Buttonpoint(textbutton: 'Add 3 Point'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
