import 'package:basketball/cubits/teams_cubit/team_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TeamCubit extends Cubit<TeamState> {
  TeamCubit() : super(TeamAState());

  int teamA = 0;
  int teamB = 0;
  void teampoint(String team, int number) {
    if (team == 'A') {
      teamA += number;
      emit(TeamAState());
    } else {
      teamB += number;
      emit(TeamBState());
    }
  }

  void teampointrest(int number) {
    if (number == 0) {
      teamA = 0;
      teamB = 0;
      emit(TeamAState());
    }
  }
}
