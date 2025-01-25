import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());
  int counter = 0;

  void counterIncrement() {
    counter++;
    emit(CounterIncrement());
  }

  void counterDecrement() {
    counter--;
    emit(CounterIncrement());
  }
  void counterReset() {
    counter = 0;
    emit(CounterReset());
  }
}
