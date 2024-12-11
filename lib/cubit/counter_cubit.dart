import 'package:basketball/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<counterSTATE> {
  CounterCubit():super(counterASTATE());
  int pointA = 0;
  int pointB = 0;
  void TeamIncreament({required String team, required int buttonNum}) {
    if (team == 'A') {
      pointA += buttonNum;
      emit(counterASTATE());
    }else{
       pointB += buttonNum;
      emit(counterBSTATE());
    }
  }
}
