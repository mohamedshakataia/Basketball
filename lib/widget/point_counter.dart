import 'package:basketball/cubits/teams_cubit/team_cubit.dart';
import 'package:basketball/cubits/teams_cubit/team_state.dart';
import 'package:basketball/helper/button.dart';
import 'package:basketball/widget/pointrest.dart';
import 'package:basketball/widget/teams.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PointCounter extends StatefulWidget {
  const PointCounter({super.key});
  static String id = 'pointcounter';

  @override
  State<PointCounter> createState() => _PointCounterState();
}

class _PointCounterState extends State<PointCounter> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TeamCubit, TeamState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Teams(
                      team: 'Team A',
                      number: BlocProvider.of<TeamCubit>(context).teamA,
                    ),
                    Teams(
                      team: 'Team B',
                      number: BlocProvider.of<TeamCubit>(context).teamB,
                    ),
                  ],
                ),
                Buttonpoint1(
                  textbutton: 'rest',
                  ontap: () {
                    BlocProvider.of<TeamCubit>(context).teampointrest(0);
                    BlocProvider.of<TeamCubit>(context).teampointrest(0);
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
