import 'package:basketball/widget/point_counter.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Basketball());
}

class Basketball extends StatelessWidget {
  const Basketball({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {PointCounter.id: (context) => PointCounter()},

      initialRoute: PointCounter.id,
    );
  }
}
