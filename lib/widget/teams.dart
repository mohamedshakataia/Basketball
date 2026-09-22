import 'package:basketball/cubits/teams_cubit/team_cubit.dart';
import 'package:basketball/helper/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Teams extends StatelessWidget {
  const Teams({super.key, required this.team, required this.number});

  final String team;
  final int number;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(team, style: TextStyle(fontSize: 32)),
        SizedBox(height: 20),
        Text('$number', style: TextStyle(fontSize: 110)),
        SizedBox(height: 30),
        Buttonpoint(
          ontap: () {
            if (team == 'Team A') {
              BlocProvider.of<TeamCubit>(context).teampoint('A', 1);
            } else {
              BlocProvider.of<TeamCubit>(context).teampoint('B', 1);
            }
          },
          textbutton: 'Add 1 Point',
        ),
        SizedBox(height: 20),
        Buttonpoint(
          ontap: () {
            if (team == 'Team A') {
              BlocProvider.of<TeamCubit>(context).teampoint('A', 2);
            } else {
              BlocProvider.of<TeamCubit>(context).teampoint('B', 2);
            }
          },
          textbutton: 'Add 2 Point',
        ),
        SizedBox(height: 20),
        Buttonpoint(
          ontap: () {
            if (team == 'Team A') {
              BlocProvider.of<TeamCubit>(context).teampoint('A', 3);
            } else {
              BlocProvider.of<TeamCubit>(context).teampoint('B', 3);
            }
          },
          textbutton: 'Add 3 Point',
        ),
      ],
    );
  }
}
