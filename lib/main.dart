import 'package:basketball/cubits/teams_cubit/team_cubit.dart';
import 'package:basketball/widget/point_counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(Basketball());
}

class Basketball extends StatelessWidget {
  const Basketball({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TeamCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {PointCounter.id: (context) => PointCounter()},

        initialRoute: PointCounter.id,
      ),
    );
  }
}
