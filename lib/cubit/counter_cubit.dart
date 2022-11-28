import 'package:basketball_counter_app/cubit/counter_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterAIncrementState());
  int teamAPoints = 0;

  int teamBPoints = 0;

  void TeamIncrement({required String team, required int bottomNumber}) {
    if (team == 'A') {
      teamAPoints += bottomNumber;
      emit(CounterAIncrementState());
    } else {
      teamBPoints += bottomNumber;
      emit(CounterBIncrementState());
    }
  }
}
