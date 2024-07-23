import 'package:basketball_counter_app/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterAState());
  int teamAPoints = 0;

  int teamBPoints = 0;

  void teamIncrement({required String team, required int buttonNumbers}) {
    if (team == 'A') {
      teamAPoints += buttonNumbers;
      emit(CounterAState());
    } else {
      teamBPoints += buttonNumbers;
      emit(CounterBState());
    }
  }
}
